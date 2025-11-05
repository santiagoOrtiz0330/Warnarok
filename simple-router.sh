#!/bin/bash
# Simple TCP port router for single Railway service deployment
# Routes different TCP connections to appropriate internal services

set -euo pipefail

# Function to route connections based on first packet or connection behavior
route_connection() {
    local client_fd=$1
    local client_ip=$2
    local client_port=$3
    
    # Read first few bytes to determine service type
    read -t 5 first_data <&$client_fd || {
        echo "Client timeout or disconnect"
        return 1
    }
    
    # Basic routing logic based on Ragnarok Online protocol
    # This is a simplified approach - in production you'd want more robust detection
    
    if [[ ${#first_data} -eq 0 ]]; then
        echo "Empty connection, closing"
        return 1
    fi
    
    # Route based on packet patterns or connection timing
    # For now, implement round-robin or detect based on client behavior
    echo "Routing connection from $client_ip:$client_port"
    
    # Default routing to login server
    exec 3<>/dev/tcp/127.0.0.1/6900
    
    # Bidirectional relay
    (
        while IFS= read -r line <&$client_fd; do
            echo "$line" >&3
        done
    ) &
    
    (
        while IFS= read -r line <&3; do
            echo "$line" >&$client_fd
        done
    ) &
    
    wait
}

# Main router function
start_router() {
    local listen_port=${RAILWAY_TCP_PROXY_PORT:-55237}
    
    echo "Starting simple TCP router on port $listen_port"
    echo "Routing to internal services:"
    echo "  - Login: 127.0.0.1:6900"
    echo "  - Char: 127.0.0.1:6121" 
    echo "  - Map: 127.0.0.1:5121"
    
    # Use netcat or socat for simple TCP forwarding
    # This is a basic implementation - for production consider using nginx stream module
    while true; do
        echo "Waiting for connections on port $listen_port..."
        
        # Simple approach: assume first connections go to login
        # More sophisticated routing would analyze packets
        nc -l -p "$listen_port" -e "nc 127.0.0.1 6900" &
        
        sleep 1
    done
}

# Check if this script should run
if [[ "${RAILWAY_SINGLE_SERVICE:-}" == "true" ]]; then
    start_router
else
    echo "Simple router not enabled. Set RAILWAY_SINGLE_SERVICE=true to enable."
fi