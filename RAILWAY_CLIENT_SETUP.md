# Railway Deployment - Client Configuration Checklist

## Server Information

**Login Server:**
- Address: `tramway.proxy.rlwy.net`
- Port: `31368`

**Char Server:**
- Address: `hopper.proxy.rlwy.net`
- Port: `20989`

**Map Server:**
- Address: `ballast.proxy.rlwy.net`
- Port: `12246`

---

## Client Configuration Files to Check

Navigate to your client folder:
```
C:\Users\xsanc\Documents\5.Projects xsantcastx\1. Ragnarok\RagnarokPropio2023
```

### 1. Check `clientinfo.xml`

**Required settings:**
```xml
<connection>
    <display>WinnerRO</display>
    <address>tramway.proxy.rlwy.net</address>
    <port>31368</port>
    <version>55</version>
    <langtype>1</langtype>
</connection>
```

**What to verify:**
- `<address>` should be `tramway.proxy.rlwy.net` (login server)
- `<port>` should be `31368` (login server public port)
- Client version should match server (check your server's `PACKETVER`)

### 2. Check for other config files

Look for these files in the client folder:
- `sclientinfo.xml` (encrypted version - update if exists)
- `data.ini` or `DATA.INI`
- `setup.ini`

### 3. Client logs to check

After attempting to connect, check these files for errors:
- `error.log` or `errors.txt`
- `login.log`
- `clienterrors.log`

**Common error messages:**
- "Cannot connect to char server" → Server not advertising correct public IP/port
- "Connection timed out" → Firewall or network issue
- "Wrong client version" → PACKETVER mismatch
- "Failed to connect" → Login server unreachable

---

## Server-Side Verification

### Service 2 (Char Server) - Check logs for:

```
=== Generated Network Config ===
char_ip: hopper.proxy.rlwy.net
char_port: 20989
```

**If it shows:**
- `char_port: 6121` → Environment variable not applied, redeploy Service 2
- `char_ip: warnarok-castri-production.up.railway.app` → Wrong hostname, check `RATHENA_CHAR_PUBLIC_IP`

### Service 3 (Map Server) - Check logs for:

```
=== Generated Network Config ===
map_ip: ballast.proxy.rlwy.net
map_port: 12246
```

**If wrong:** Check `RATHENA_MAP_PUBLIC_IP` and `RATHENA_MAP_PORT` environment variables

---

## Testing Steps

### 1. Network Connectivity (from client PC)

```powershell
# Test login server
Test-NetConnection -ComputerName tramway.proxy.rlwy.net -Port 31368

# Test char server
Test-NetConnection -ComputerName hopper.proxy.rlwy.net -Port 20989

# Test map server
Test-NetConnection -ComputerName ballast.proxy.rlwy.net -Port 12246
```

All should show `TcpTestSucceeded: True` ✅

### 2. Client Connection Test

1. Update `clientinfo.xml` with Railway login server address
2. Launch Ragnarok client
3. Attempt login with valid account
4. **Expected flow:**
   - ✅ Login screen appears
   - ✅ Login accepted → redirects to char server
   - ✅ Character selection screen appears → redirects to map server
   - ✅ Enter game world

### 3. If stuck after login (before char screen)

**Check char-server logs for:**
- `[Status]: Request for connection of <username>`
- `[Notice]: Authentication accepted`
- Look for disconnect/error messages

**Check client logs for:**
- Connection errors
- Version mismatch
- Encryption errors

---

## Quick Fix Commands

### If char/map servers show wrong public IPs in logs:

**Service 1 (Login Server) environment variables:**
```
RATHENA_CHAR_SERVER_IP=hopper.proxy.rlwy.net
RATHENA_CHAR_SERVER_PORT=20989
RATHENA_MAP_SERVER_IP=ballast.proxy.rlwy.net
RATHENA_MAP_SERVER_PORT=12246
```

**Service 2 (Char Server) environment variables:**
```
RATHENA_CHAR_PUBLIC_IP=hopper.proxy.rlwy.net
RATHENA_CHAR_PORT=20989
```

**Service 3 (Map Server) environment variables:**
```
RATHENA_MAP_PUBLIC_IP=ballast.proxy.rlwy.net
RATHENA_MAP_PORT=12246
```

After adding/changing variables, **redeploy the service** in Railway.

---

## Current Status

✅ All TCP proxies are reachable from client PC
✅ Environment variables configured correctly
✅ Client configuration file `clientinfo.xml` created with Railway server addresses
✅ All required GRF files are present (winner_map.grf, new.grf, Palettes.grf, rdata.grf, data.grf)
✅ Client executable `1.WinnerRO.exe` launches successfully
✅ Login server connection works (client reaches login screen and authenticates)
✅ **LOGIN SERVER WORKING CORRECTLY:**
- Authentication accepted for account 'yaver' (ID: 2000000)
- Client version 20211103 is compatible
- Login successful but connection closes immediately after

❌ **PROBLEM FOUND: Login server using internal Railway IPs**
- Char server connecting to login server via internal IP: `10.192.65.166:6900`
- Login server redirecting clients to internal IPs instead of public Railway proxy addresses
- **FIX NEEDED**: Configure login server environment variables with public proxy addresses

---

## Next Steps

1. Open the client folder in VS Code
2. Check `clientinfo.xml` and paste contents
3. Try connecting with client
4. If fails, check client logs and paste errors
5. Check char-server Railway logs during connection attempt
