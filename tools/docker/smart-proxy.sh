#!/bin/bash
# Railway Smart Proxy for rAthena Single-Service Deployment
# Routes connections to appropriate internal services based on Ragnarok Online protocol

set -euo pipefail

PROXY_PORT=${PORT:-6900}
LOGIN_PORT=${RATHENA_LOGIN_PORT:-6900}  
CHAR_PORT=${RATHENA_CHAR_PORT:-6121}
MAP_PORT=${RATHENA_MAP_PORT:-5121}

echo "=== rAthena Smart Proxy Started ==="
echo "Listening on port: $PROXY_PORT"
echo "Routing to:"
echo "  Login: 127.0.0.1:$LOGIN_PORT"
echo "  Char:  127.0.0.1:$CHAR_PORT" 
echo "  Map:   127.0.0.1:$MAP_PORT"
echo "=================================="

# Simple connection routing based on Ragnarok Online client behavior
# This is a basic implementation - in production, consider nginx stream module

while true; do
    echo "Waiting for connection on port $PROXY_PORT..."
    
    # Use socat to handle the connection and route to appropriate service
    # For now, we'll route all connections to login server
    # The login server will then redirect clients to char/map servers
    socat TCP-LISTEN:$PROXY_PORT,fork,reuseaddr TCP:127.0.0.1:$LOGIN_PORT &
    
    # Wait a bit before next iteration
    sleep 1
done