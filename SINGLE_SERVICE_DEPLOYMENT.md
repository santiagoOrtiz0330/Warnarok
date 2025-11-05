
# Single-Service Railway Deployment\n\n## Overview\n\nThis guide covers the single-container deployment of rAthena on Railway. \nAll three daemons (login, char, map) run inside one service. Clients reach \nthe cluster through the Railway TCP proxy which now terminates a smart \nprotocol-aware router sitting inside the container.\n\n## Runtime Topology\n\n`
+----------------------------- Railway Container -----------------------------+
|                                                                            |
|   smart_proxy.py (listens on , defaults to 6900)                      |
|      +--> 127.0.0.1:6900  (login-server backend)                           |
|      +--> 127.0.0.1:6121  (char-server backend)                            |
|      +--> 127.0.0.1:5121  (map-server backend)                             |
|                                                                            |
|   login-server    (binds 127.0.0.1:6900)                                    |
|   char-server     (binds 127.0.0.1:6121, advertises proxy host/port)        |
|   map-server      (binds 127.0.0.1:5121, advertises proxy host/port)        |
+----------------------------------------------------------------------------+
              ^
              |
        Railway TCP proxy (tramway.proxy.rlwy.net:)
              |
          Ragnarok Clients
`
\nThe smart proxy inspects the first packet on each connection. Ragnarok clients \nsend different opcodes when talking to the login, char, or map server. The proxy \nclassifies the request and forwards the TCP stream to the correct backend, which \nmeans **only one Railway TCP port is required**.\n\n## Environment Variables\n\nSet the following for the Railway service (replace the host/port with the values \nRailway assigns to you):\n\n`
RAILWAY_TCP_PROXY_DOMAIN=tramway.proxy.rlwy.net
RAILWAY_TCP_PROXY_PORT=25164   # the single exposed TCP port
`
\nDatabase credentials may come from Railway's MySQL add-on (e.g. DATABASE_URL). If \nnot, provide MYSQL_HOST, MYSQL_PORT, MYSQL_USER, MYSQL_PASSWORD, and \nMYSQL_DATABASE. No other advertise *_HOST/PORT variables are required.\n\n## Generated Config Files\n\nThe entrypoint now writes the following overrides: \n\n### conf/import/railway_login.conf
`
bind_ip: 127.0.0.1
login_port: 6900
char_server_ip: tramway.proxy.rlwy.net
char_server_port: 25164
`
\n### conf/import/railway_char.conf
`
login_ip: 127.0.0.1
login_port: 6900
bind_ip: 127.0.0.1
char_ip: 127.0.0.1
char_port: 6121
advertise_host: tramway.proxy.rlwy.net
advertise_port: 25164
`
\n### conf/import/railway_map.conf
`
char_ip: 127.0.0.1
char_port: 6121
bind_ip: 127.0.0.1
map_ip: 127.0.0.1
map_port: 5121
advertise_host: tramway.proxy.rlwy.net
advertise_port: 25164
`
\n## Deployment Steps\n\n1. Commit/push the updated 	ools/docker/Dockerfile and docker-entrypoint.sh.\n2. Run ailway up (or trigger a redeploy) so the new image builds.\n3. Verify the service logs show:
   - Smart proxy started (PID: ...)
   - login/char/map servers started successfully.\n4. Point your Ragnarok client at 	ramway.proxy.rlwy.net:25164. The client will:
   - Connect to the proxy, which forwards the login handshake to 127.0.0.1:6900.
   - Reconnect to the same public port for the char handshake; the proxy routes
     it internally to 127.0.0.1:6121.
   - Reconnect again for the map handshake; the proxy routes to 127.0.0.1:5121.
\n## Troubleshooting\n\n- **Client disconnects after login**: Check log/proxy.log. If the proxy cannot
  classify the packet, it falls back to the login backend. Ensure the deployment
  is running the latest smart_proxy.py and that Railway is passing the PORT
  value into the container.
- **No logs for the proxy**: Confirm python3 is present (Dockerfile installs
  it) and that smart_proxy.py is executable. The entrypoint writes logs to
  log/proxy.log and tails them during status checks.
- **Database connection errors**: Validate the MYSQL_* or DATABASE_URL
  variables. The single-service build shares one set across login/char/map.
\n## Key Differences vs. Multi-Service Deployments\n\n| Aspect            | Single Service (smart proxy)        | Multi-Service |
|-------------------|-------------------------------------|---------------|
| Public TCP ports  | 1 (Railway assigns PORT)          | 3 (6900/6121/5121) |
| Inter-server link | localhost                           | cross-service network |
| Operating cost    | 1 Railway service                   | 3 services |
| Failure domain    | Single container                    | Independent |
| Complexity        | Needs smart proxy                   | Straightforward |
\nThe proxy approach keeps the hosting bill low while still presenting the
expected ports to the client. If you later decide to move back to the
multi-service model, simply disable the proxy and expose each daemon directly.\n
