Starting Container
Smart proxy started (PID: 8)
=== SINGLE-SERVICE DEPLOYMENT ===
=== Starting rAthena Servers ===
All clients connect to: tramway.proxy.rlwy.net:25164
Starting login-server...
Internal routing:
=== rAthena Railway Deployment ===
Login server started (PID: 10)
  - Login backend: 127.0.0.1:6900
Container startup initiated...
  - Char backend : 127.0.0.1:6121
=== Generating Railway Configuration ===
Railway TCP Proxy: tramway.proxy.rlwy.net:25164
  - Map backend  : 127.0.0.1:5121
Database: switchyard.proxy.rlwy.net:50547
===============================
Configuration generated successfully!
Starting smart proxy on 25164...
Starting char-server...
Char server started (PID: 12)
Starting map-server...
Map server started (PID: 14)
All servers started successfully!
PIDs: Login=10, Char=12, Map=14
Logs available in: log/login.log, log/char.log, log/map.log
Smart proxy died! Shutting down...
--- proxy log (last 50 lines) ---
Traceback (most recent call last):
  File "/rathena/./smart_proxy.py", line 113, in <module>
    asyncio.run(main())
  File "/usr/lib/python3.10/asyncio/runners.py", line 44, in run
    return loop.run_until_complete(main)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
    return future.result()
  File "/rathena/./smart_proxy.py", line 102, in main
    server = await asyncio.start_server(handle_client, host="0.0.0.0", port=LISTEN_PORT)
  File "/usr/lib/python3.10/asyncio/streams.py", line 85, in start_server
    return await loop.create_server(factory, host, port, **kwds)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 1519, in create_server
    raise OSError(err.errno, 'error while attempting '
OSError: [Errno 98] error while attempting to bind on address ('0.0.0.0', 6900): address already in use
--------------------------------
=== rAthena Railway Deployment ===
Container startup initiated...
=== Generating Railway Configuration ===
Railway TCP Proxy: tramway.proxy.rlwy.net:25164
Database: switchyard.proxy.rlwy.net:50547
=== SINGLE-SERVICE DEPLOYMENT ===
All clients connect to: tramway.proxy.rlwy.net:25164
Internal routing:
  - Login backend: 127.0.0.1:6900
  - Char backend : 127.0.0.1:6121
  - Map backend  : 127.0.0.1:5121
===============================
Configuration generated successfully!
Starting smart proxy on 25164...
Smart proxy started (PID: 8)
=== Starting rAthena Servers ===
Starting login-server...
Login server started (PID: 10)
Starting char-server...
Char server started (PID: 12)
Starting map-server...
Map server started (PID: 14)
All servers started successfully!
PIDs: Login=10, Char=12, Map=14
Logs available in: log/login.log, log/char.log, log/map.log
Smart proxy died! Shutting down...
--- proxy log (last 50 lines) ---
Traceback (most recent call last):
  File "/rathena/./smart_proxy.py", line 113, in <module>
    asyncio.run(main())
  File "/usr/lib/python3.10/asyncio/runners.py", line 44, in run
    return loop.run_until_complete(main)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
    return future.result()
  File "/rathena/./smart_proxy.py", line 102, in main
    server = await asyncio.start_server(handle_client, host="0.0.0.0", port=LISTEN_PORT)
  File "/usr/lib/python3.10/asyncio/streams.py", line 85, in start_server
    return await loop.create_server(factory, host, port, **kwds)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 1519, in create_server
    raise OSError(err.errno, 'error while attempting '
OSError: [Errno 98] error while attempting to bind on address ('0.0.0.0', 6900): address already in use
--------------------------------
=== rAthena Railway Deployment ===
Container startup initiated...
=== Generating Railway Configuration ===
Railway TCP Proxy: tramway.proxy.rlwy.net:25164
Database: switchyard.proxy.rlwy.net:50547
=== SINGLE-SERVICE DEPLOYMENT ===
All clients connect to: tramway.proxy.rlwy.net:25164
Internal routing:
  - Login backend: 127.0.0.1:6900
  - Char backend : 127.0.0.1:6121
  - Map backend  : 127.0.0.1:5121
===============================
Configuration generated successfully!
Starting smart proxy on 25164...
Smart proxy started (PID: 8)
=== Starting rAthena Servers ===
Starting login-server...
Login server started (PID: 10)
Starting char-server...
Char server started (PID: 12)
Starting map-server...
Map server started (PID: 14)
All servers started successfully!
PIDs: Login=10, Char=12, Map=14
Logs available in: log/login.log, log/char.log, log/map.log
Smart proxy died! Shutting down...
--- proxy log (last 50 lines) ---
Traceback (most recent call last):
  File "/rathena/./smart_proxy.py", line 113, in <module>
    asyncio.run(main())
  File "/usr/lib/python3.10/asyncio/runners.py", line 44, in run
    return loop.run_until_complete(main)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 649, in run_until_complete
    return future.result()
  File "/rathena/./smart_proxy.py", line 102, in main
    server = await asyncio.start_server(handle_client, host="0.0.0.0", port=LISTEN_PORT)
  File "/usr/lib/python3.10/asyncio/streams.py", line 85, in start_server
    return await loop.create_server(factory, host, port, **kwds)
  File "/usr/lib/python3.10/asyncio/base_events.py", line 1519, in create_server
    raise OSError(err.errno, 'error while attempting '
OSError: [Errno 98] error while attempting to bind on address ('0.0.0.0', 6900): address already in use
--------------------------------
=== rAthena Railway Deployment ===
Container startup initiated...
=== Generating Railway Configuration ===
Railway TCP Proxy: tramway.proxy.rlwy.net:25164
Database: switchyard.proxy.rlwy.net:50547
=== SINGLE-SERVICE DEPLOYMENT ===
All clients connect to: tramway.proxy.rlwy.net:25164
Internal routing:
  - Login backend: 127.0.0.1:6900
  - Char backend : 127.0.0.1:6121
  - Map backend  : 127.0.0.1:5121