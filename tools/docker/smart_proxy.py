#!/usr/bin/env python3
"""Smart TCP proxy for Railway single-service deployments."""

import asyncio
import logging
import os
import struct
from typing import Tuple

LOGIN_PORT = int(os.environ.get("RATHENA_LOGIN_PORT", "6900"))
CHAR_PORT = int(os.environ.get("RATHENA_CHAR_PORT", "6121"))
MAP_PORT = int(os.environ.get("RATHENA_MAP_PORT", "5121"))
LISTEN_PORT = int(os.environ.get("RAILWAY_TCP_PROXY_PORT", os.environ.get("PORT", "6900")))
BUFFER_SIZE = 1024
READ_TIMEOUT = float(os.environ.get("SMART_PROXY_READ_TIMEOUT", "3.0"))

LOGIN_CMDS = {0x0064, 0x01DD, 0x01FA, 0x0277, 0x02B0}
CHAR_CMDS = {0x0065, 0x0066, 0x0825, 0x01FB, 0x09A0, 0x0AC4, 0x0AC5}
MAP_CMDS = {0x0072, 0x0436, 0x02EB, 0x0973, 0x07E4, 0x0B2C, 0x0B2D}


def classify_destination(packet: bytes) -> Tuple[int, str]:
    """Return backend port and reason label for logging."""
    if len(packet) < 2:
        return LOGIN_PORT, "login-default-short"

    cmd = struct.unpack_from("<H", packet, 0)[0]
    length = len(packet)

    if cmd in LOGIN_CMDS:
        return LOGIN_PORT, f"login-0x{cmd:04x}"
    if cmd in CHAR_CMDS:
        return CHAR_PORT, f"char-0x{cmd:04x}"
    if cmd in MAP_CMDS:
        return MAP_PORT, f"map-0x{cmd:04x}"

    # Heuristics: char requests tend to be ~17 bytes, map ~19-31 bytes
    if length <= 22:
        return CHAR_PORT, f"char-fallback-len{length}"
    if length <= 40:
        return MAP_PORT, f"map-fallback-len{length}"

    return LOGIN_PORT, f"login-fallback-len{length}"


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
            logging.warning("%s timeout waiting for initial packet", peer)
            client_writer.close()
            return

        if not first_chunk:
            logging.warning("%s disconnected without sending data", peer)
            client_writer.close()
            return

        target_port, reason = classify_destination(first_chunk)
        cmd = struct.unpack_from("<H", first_chunk, 0)[0]
        logging.info("Routing %s -> %d (%s, len=%d, cmd=0x%04x)", peer, target_port, reason, len(first_chunk), cmd)

        target_reader, target_writer = await asyncio.open_connection("127.0.0.1", target_port)
        target_writer.write(first_chunk)
        await target_writer.drain()

        await asyncio.gather(
            pipe_stream(client_reader, target_writer),
            pipe_stream(target_reader, client_writer),
        )
    except Exception as exc:
        logging.exception("Proxy error handling %s: %s", peer, exc)
    finally:
        client_writer.close()


async def main() -> None:
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
