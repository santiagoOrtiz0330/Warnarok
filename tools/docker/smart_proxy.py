#!/usr/bin/env python3
"""
Smart TCP proxy for Railway single-service deployments.

Clients always connect to the exposed Railway port (PORT). This proxy inspects
the first packet sent by the Ragnarok client and forwards the connection to the
appropriate internal server (login, char, map).
"""

import asyncio
import logging
import os
import struct
from typing import Optional

LOGIN_PORT = int(os.environ.get("RATHENA_LOGIN_PORT", "6900"))
CHAR_PORT = int(os.environ.get("RATHENA_CHAR_PORT", "6121"))
MAP_PORT = int(os.environ.get("RATHENA_MAP_PORT", "5121"))
LISTEN_PORT = int(os.environ.get("PORT", os.environ.get("RAILWAY_TCP_PROXY_PORT", "6900")))
BUFFER_SIZE = 1024
READ_TIMEOUT = float(os.environ.get("SMART_PROXY_READ_TIMEOUT", "3.0"))


def classify_destination(packet: bytes) -> int:
    """
    Determine which internal server a client connection should be routed to,
    based on the first packet sent by the client.

    Returns the target port.
    """
    if len(packet) < 2:
        return LOGIN_PORT

    cmd = struct.unpack_from("<H", packet, 0)[0]

    # Common login packets (0x0064, 0x01DD, 0x0277 ...)
    if cmd in {0x0064, 0x01DD, 0x01FA, 0x0277, 0x02B0}:
        return LOGIN_PORT

    # Char-server selection/login (0x0065, 0x0825 etc.)
    if cmd in {0x0065, 0x0066, 0x0825, 0x01FB, 0x09A0}:
        return CHAR_PORT

    # Map-server connect packets (0x0072, 0x0436, 0x02EB ...)
    if cmd in {0x0072, 0x0436, 0x02EB, 0x0973, 0x07E4}:
        return MAP_PORT

    # Fallback: first connection in the flow should always be login
    return LOGIN_PORT


async def pipe_stream(reader: asyncio.StreamReader, writer: asyncio.StreamWriter):
    try:
        while not reader.at_eof():
            data = await reader.read(BUFFER_SIZE)
            if not data:
                break
            writer.write(data)
            await writer.drain()
    finally:
        writer.close()


async def handle_client(client_reader: asyncio.StreamReader, client_writer: asyncio.StreamWriter):
    peer = client_writer.get_extra_info("peername")
    try:
        try:
            first_chunk = await asyncio.wait_for(client_reader.read(BUFFER_SIZE), READ_TIMEOUT)
        except asyncio.TimeoutError:
            logging.warning("Client %s timed out waiting for initial packet", peer)
            client_writer.close()
            return

        if not first_chunk:
            logging.warning("Client %s disconnected without sending data", peer)
            client_writer.close()
            return

        target_port = classify_destination(first_chunk)
        target_host = "127.0.0.1"
        logging.info("Routing %s -> %s:%d (cmd=0x%04x)", peer, target_host, target_port,
                     struct.unpack_from('<H', first_chunk, 0)[0])

        target_reader, target_writer = await asyncio.open_connection(target_host, target_port)

        # Push the first chunk through to the backend immediately.
        target_writer.write(first_chunk)
        await target_writer.drain()

        await asyncio.gather(
            pipe_stream(client_reader, target_writer),
            pipe_stream(target_reader, client_writer)
        )
    except Exception as exc:
        logging.exception("Proxy error handling %s: %s", peer, exc)
    finally:
        client_writer.close()


async def main():
    logging.basicConfig(level=logging.INFO, format="[smart-proxy] %(message)s")
    server = await asyncio.start_server(handle_client, host="0.0.0.0", port=LISTEN_PORT)
    sockets = ", ".join(str(sock.getsockname()) for sock in server.sockets or [])
    logging.info("Smart proxy listening on %s", sockets)
    logging.info("Backends login=%d char=%d map=%d", LOGIN_PORT, CHAR_PORT, MAP_PORT)

    async with server:
        await server.serve_forever()


if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
