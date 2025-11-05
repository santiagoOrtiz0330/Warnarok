# Single-Service Railway Deployment Documentation

## Overview

This document describes the single-service approach for deploying rAthena (Ragnarok Online server) on Railway platform, running all three servers (login, char, map) in one container.

## Architecture

```
┌─────────────────────────────────────────┐
│           Railway Container             │
│  ┌──────────┐ ┌──────────┐ ┌─────────┐ │
│  │  Login   │ │   Char   │ │   Map   │ │
│  │ Server   │ │ Server   │ │ Server  │ │
│  │ :25164   │ │ :6121    │ │ :5121   │ │
│  └──────────┘ └──────────┘ └─────────┘ │
│           127.0.0.1 network             │
└─────────────────────────────────────────┘
                    │
         Railway TCP Proxy
    tramway.proxy.rlwy.net:25164
                    │
              Client Connections
```

## Current Implementation Status

### ✅ What's Working:
- All 3 servers start successfully in one container
- Inter-server communication (localhost)
- Client authentication to login server
- Railway environment detection
- Configuration generation

### ❌ What's Not Working:
- Client cannot connect to char server after login
- Char server advertises wrong port to clients

## The Critical Issue Found

**Problem**: In `docker-entrypoint.sh`, the char server configuration has:

```bash
# WRONG - Using same port for both listen and advertise
char_port: 6121
advertise_port: ${RAILWAY_TCP_PROXY_PORT}  # This is 25164, but should be 6121
```

**Root Cause**: Railway TCP proxy expects:
- Login server on port 25164 (✅ working)
- Char server on port 6121 (❌ advertising wrong port)

## Required Fixes

### Fix 1: Correct Char Server Port Advertisement

The char server needs to advertise port **6121**, not **25164**:

```bash
# In railway_char.conf
char_port: 6121
advertise_port: 6121  # NOT ${RAILWAY_TCP_PROXY_PORT}
```

### Fix 2: Railway TCP Proxy Configuration

Railway needs to expose **both ports**:
- Port 25164 → Login Server (currently working)
- Port 6121 → Char Server (needs to be added)

### Fix 3: Environment Variables Needed

```bash
RAILWAY_TCP_PROXY_DOMAIN=tramway.proxy.rlwy.net
# Railway should auto-expose both 25164 and 6121
```

## Client Connection Flow

1. **Client → Login Server**: `tramway.proxy.rlwy.net:25164` ✅
2. **Login Server Response**: "Char server at `tramway.proxy.rlwy.net:6121`" ❌ (currently saying 25164)
3. **Client → Char Server**: `tramway.proxy.rlwy.net:6121` ❌ (Railway not exposing this port)

## Configuration Files Generated

### `conf/import/railway_login.conf`
```ini
bind_ip: 0.0.0.0
login_port: 25164
char_server_ip: tramway.proxy.rlwy.net
char_server_port: 6121  # ✅ Correct
```

### `conf/import/railway_char.conf` (NEEDS FIX)
```ini
login_ip: 127.0.0.1
login_port: 6900
bind_ip: 127.0.0.1
char_port: 6121
advertise_host: tramway.proxy.rlwy.net
advertise_port: 6121  # ❌ Currently using 25164
```

### `conf/import/railway_map.conf`
```ini
char_ip: 127.0.0.1
char_port: 6121
bind_ip: 127.0.0.1
map_port: 5121
# Map server doesn't need external access
```

## Deployment Process

1. **Build & Deploy**:
   ```bash
   cd tools/docker
   railway up
   ```

2. **Set Environment Variables**:
   ```bash
   RAILWAY_TCP_PROXY_DOMAIN=tramway.proxy.rlwy.net
   ```

3. **Railway TCP Proxy Setup**:
   - Expose port 25164 for login server ✅
   - Expose port 6121 for char server ❌ (missing)

## Logs Analysis

From `deploylog.md`:
```
[Info]: Connection request of the char-server 'rAthena' @ 66.33.22.254:6121
```
This shows char server registering with internal IP instead of `tramway.proxy.rlwy.net:6121`.

Client flow:
```
[Notice]: Authentication accepted (account: yaver, id: 2000000, ip: 100.64.0.2)
[Info]: Closed connection from '100.64.0.2'
```
Client authenticates successfully but disconnects when trying to connect to char server.

## Solution Steps

### Step 1: Fix docker-entrypoint.sh
```bash
# Change line ~94 in railway_char.conf generation:
advertise_port: 6121  # NOT ${RAILWAY_TCP_PROXY_PORT}
```

### Step 2: Railway Dashboard Configuration
1. Go to Railway dashboard
2. Add environment variable: `RAILWAY_TCP_PROXY_DOMAIN=tramway.proxy.rlwy.net`
3. Configure TCP proxy for **both ports**: 25164 and 6121

### Step 3: Verify Railway TCP Proxy
Railway should expose:
- `tramway.proxy.rlwy.net:25164` → Login Server (port 25164)
- `tramway.proxy.rlwy.net:6121` → Char Server (port 6121)

## Expected Results After Fix

1. Login server tells client: "Char server at `tramway.proxy.rlwy.net:6121`"
2. Client connects to `tramway.proxy.rlwy.net:6121`
3. Railway routes to char server on port 6121
4. Client sees character selection screen

## Advantages of Single-Service Approach

### ✅ Benefits:
- **Cost**: 1× Railway service charge instead of 3×
- **Performance**: Localhost inter-server communication
- **Simplicity**: Single deployment, unified logging
- **No service discovery**: No complex networking between containers

### ⚠️ Trade-offs:
- Single point of failure
- All servers share container resources
- More complex Railway TCP proxy setup (needs multiple ports)

## Comparison: Single vs Multi-Service

| Aspect | Single Service | Multi-Service |
|--------|---------------|---------------|
| **Cost** | $5-10/month | $15-30/month |
| **Latency** | ~0.1ms (localhost) | ~1-5ms (network) |
| **Setup** | Complex port routing | Simple service discovery |
| **Scaling** | Scale all together | Scale servers individually |
| **Debugging** | Unified logs | Distributed logs |

## Next Actions

1. **Fix char server port configuration** in `docker-entrypoint.sh`
2. **Configure Railway TCP proxy** for both ports (25164, 6121)
3. **Test client connection** flow: login → auth → char server → character selection
4. **Monitor logs** to verify char server advertises correct external address

## Railway Platform Notes

- Railway V2 TCP proxy supports multiple ports
- Environment variables available: `RAILWAY_TCP_PROXY_DOMAIN`, `PORT`
- MySQL addon provides `DATABASE_URL` for database connection
- Single-service deployment is cost-effective for tightly coupled applications like game servers

---

*This documentation was created to debug the single-service Railway deployment of rAthena Ragnarok Online server.*