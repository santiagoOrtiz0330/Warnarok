Starting Container
=== rAthena Railway Deployment ===
Container startup initiated...
=== Generating Railway Configuration ===
Railway TCP Proxy: tramway.proxy.rlwy.net:25164
Database: switchyard.proxy.rlwy.net:50547
=== SINGLE-SERVICE DEPLOYMENT ===
All clients connect to: tramway.proxy.rlwy.net:25164
Internal routing:
  - Login backend: 0.0.0.0:6900
  - Char backend : 0.0.0.0:6121
  - Map backend  : 0.0.0.0:5121
===============================
Configuration generated successfully!
Starting smart proxy on 25164...
Smart proxy started (PID: 8)
=== Starting rAthena Servers ===
Starting login-server...
Login server started (PID: 10)
Starting char-server...
Char server started (PID: 12)
PIDs: Login=10, Char=12, Map=14
Logs available in: log/login.log, log/char.log, log/map.log
Starting map-server...
Map server started (PID: 14)
All servers started successfully!
[Info]: Loaded guild castle (28 - guild 0)
Smart proxy (last 3 lines):
[Info]: Guild loaded (2 - Prueba)
[smart-proxy] Smart proxy listening on ('0.0.0.0', 25164)
[Info]: Guild Unloaded (2 - Prueba)
[smart-proxy] Backends login=6900 char=6121 map=5121
==========================
=== Server Status Check ===
[Status]: Connection of the account 'yaver' accepted.
Login server (last 3 lines):
Map server (last 3 lines):
[Info]: Closed connection from '100.64.0.2'.
[Notice]: Authentication accepted (account: yaver, id: 2000000, ip: 100.64.0.2)
Char server (last 3 lines):
[Info]: Received Fame List of '0' characters.
[Status]: Received '34' guild castles from char-server.
[Status]: Received '4' clans from char-server.
=== Server Status Check ===
Login server (last 3 lines):
[Status]: Connection of the account 'yaver' accepted.
[Info]: Closed connection from '100.64.0.2'.
[Info]: Web Auth Token for account 2000000 was disabled
Char server (last 3 lines):
[Info]: Loaded guild castle (28 - guild 0)
[Info]: Guild loaded (2 - Prueba)
[Info]: Guild Unloaded (2 - Prueba)
Map server (last 3 lines):
[Info]: Received Fame List of '0' characters.
[Status]: Received '34' guild castles from char-server.
[Status]: Received '4' clans from char-server.
Smart proxy (last 3 lines):
[smart-proxy] Smart proxy listening on ('0.0.0.0', 25164)
[smart-proxy] Backends login=6900 char=6121 map=5121
==========================