# Advertised Endpoint Support

This document summarises the NAT/Docker-friendly networking changes that were
introduced to separate the ports a server listens on from the host/port values
it advertises to peers and game clients.

The goal is to keep the existing LAN behaviour untouched while making it easy
to run the stack behind TCP proxies or port-mapped containers.

---

## Character Server

- **New config fields**
  - `advertise_host` (optional): Hostname/IP to report to the login server and
    clients. Defaults to `char_ip`.
  - `advertise_port` (optional): External port clients should use. Defaults to
    `char_port`.
- **Runtime behaviour**
  - Listens on `char_port` exactly as before.
  - Registration packets (`0x2710`) now send the resolved advertised address.
  - When the runtime detects an IP refresh it keeps the advertise override if
    one was supplied.
- **Config surfaces touched**
  - `conf/char_athena.conf` documents the new keys.
  - `src/char/char.hpp`, `char.cpp`, and `char_logif.cpp` contain the backing
    state plus defaulting/registration logic.

## Map Server

- Mirrors the same approach:
  - `advertise_host` / `advertise_port` fall back to `map_ip` / `map_port`.
  - `src/map/clif.cpp` holds the resolution fallback logic.
  - `map_config_read` recognises the new keys so imports can override them.
  - `conf/map_athena.conf` now highlights the options.

## Container Entry Point

`docker-entrypoint.sh` now wires environment variables to both the listen and
advertised values:

| Purpose                     | Env var (override)                | Default                         |
|-----------------------------|-----------------------------------|---------------------------------|
| Char advertised host        | `RATHENA_CHAR_ADVERTISE_HOST`     | `RATHENA_CHAR_PUBLIC_IP`        |
| Char advertised port        | `RATHENA_CHAR_PUBLIC_PORT`        | `55237`                         |
| Map advertised host         | `RATHENA_MAP_ADVERTISE_HOST`      | `RATHENA_MAP_PUBLIC_IP`         |
| Map advertised port         | `RATHENA_MAP_PUBLIC_PORT`         | `12246`                         |
| Map→Char internal port      | `RATHENA_MAP_CHAR_PORT`           | `CHAR_LISTEN_PORT` (`6121`)     |

Generated import files now contain both the listen port and the advertised
port, so the servers can connect internally while clients still see the public
edge.

## Fallback & Compatibility

- When no `advertise_*` values are supplied, both servers behave exactly like
  upstream rAthena (advertised address == listen address).
- If an advertised host cannot be resolved at boot, the code logs a warning and
  keeps trying while falling back to the listen IP.
- No schema/database changes were required; the defaults are entirely
  in-memory.

## Operational Checklist

1. **Set internal endpoints**
   - `CHAR_LISTEN_PORT` (and `RATHENA_MAP_CHAR_PORT` if the char server runs on
     a non-default port).
2. **Set advertised endpoints** (optional)
   - `RATHENA_CHAR_ADVERTISE_HOST` / `RATHENA_CHAR_PUBLIC_PORT`
   - `RATHENA_MAP_ADVERTISE_HOST` / `RATHENA_MAP_PUBLIC_PORT`
3. **Restart the containers** so `conf/import/99-railway-network-*.conf` is
   regenerated with the new values.
4. **Verify logs**
   - Login server should log the char server at the advertised host:port.
   - Char server should log map servers registering with their advertised
     endpoints.

With these knobs in place, the servers can listen on internal-only ports while
presenting public-facing endpoints that match the TCP proxies or NAT mappings
in front of them.

## Smart Proxy Mode

When the login, char, and map servers share a single externally exposed port (Railway single-service deployment), the container runs smart_proxy.py. It listens on PORT (default 6900), inspects the first packet, and forwards the connection to 127.0.0.1:6900 (login), 127.0.0.1:6121 (char), or 127.0.0.1:5121 (map). For this setup the char and map servers should advertise the proxy host and port (the same value clients use to reach the login server).
