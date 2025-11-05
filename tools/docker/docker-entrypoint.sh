#!/bin/bash
set -euo pipefail

echo "=== rAthena Railway Deployment ==="
echo "Container startup initiated..."

# Set working directory  
RATHENA_HOME=${RATHENA_HOME:-/rathena}
cd "${RATHENA_HOME}"

# Generate configuration for Railway single-service deployment
generate_railway_config() {
    echo "=== Generating Railway Configuration ==="
    
    # Railway TCP proxy detection
    RAILWAY_TCP_PROXY_DOMAIN=${RAILWAY_TCP_PROXY_DOMAIN:-${RAILWAY_PUBLIC_DOMAIN:-}}
    RAILWAY_TCP_PROXY_PORT=${RAILWAY_TCP_PROXY_PORT:-${PORT:-6900}}
    
    # Database connection (Railway MySQL)
    DB_HOST=${DATABASE_URL:-${MYSQL_HOST:-db}}
    DB_PORT=${MYSQL_PORT:-3306}
    DB_USER=${MYSQL_USER:-ragnarok}
    DB_PASS=${MYSQL_PASSWORD:-ragnarok}
    DB_NAME=${MYSQL_DATABASE:-ragnarok}
    
    echo "Railway TCP Proxy: ${RAILWAY_TCP_PROXY_DOMAIN}:${RAILWAY_TCP_PROXY_PORT}"
    echo "Database: ${DB_HOST}:${DB_PORT}"
    
    # Create inter-server config for Railway
    mkdir -p conf/import
    cat > conf/import/railway.conf <<EOF
// Generated Railway configuration
login_server_ip: ${DB_HOST}
login_server_port: ${DB_PORT}
login_server_id: ${DB_USER}
login_server_pw: ${DB_PASS}
login_server_db: ${DB_NAME}

char_server_ip: ${DB_HOST}
char_server_port: ${DB_PORT}
char_server_id: ${DB_USER}
char_server_pw: ${DB_PASS}
char_server_db: ${DB_NAME}

map_server_ip: ${DB_HOST}
map_server_port: ${DB_PORT}
map_server_id: ${DB_USER}
map_server_pw: ${DB_PASS}
map_server_db: ${DB_NAME}

ipban_db_ip: ${DB_HOST}
ipban_db_port: ${DB_PORT}
ipban_db_id: ${DB_USER}
ipban_db_pw: ${DB_PASS}
ipban_db_db: ${DB_NAME}

log_db_ip: ${DB_HOST}
log_db_port: ${DB_PORT}
log_db_id: ${DB_USER}
log_db_pw: ${DB_PASS}
log_db_db: ${DB_NAME}
EOF

    # Login server config - external client connections
    cat > conf/import/railway_login.conf <<EOF
// Railway login server config
bind_ip: 0.0.0.0
login_port: ${RAILWAY_TCP_PROXY_PORT}
char_server_ip: 127.0.0.1
char_server_port: 6121
console_msg_log: 7
EOF

    # Char server config - internal + advertised addresses
    cat > conf/import/railway_char.conf <<EOF
// Railway char server config  
login_ip: 127.0.0.1
login_port: ${RAILWAY_TCP_PROXY_PORT}
bind_ip: 127.0.0.1
char_ip: 127.0.0.1
char_port: 6121
advertise_host: ${RAILWAY_TCP_PROXY_DOMAIN}
advertise_port: ${RAILWAY_TCP_PROXY_PORT}
console_msg_log: 7
EOF

    # Map server config - internal communication
    cat > conf/import/railway_map.conf <<EOF
// Railway map server config
char_ip: 127.0.0.1
char_port: 6121
bind_ip: 127.0.0.1
map_ip: 127.0.0.1
map_port: 5121
advertise_host: ${RAILWAY_TCP_PROXY_DOMAIN}  
advertise_port: ${RAILWAY_TCP_PROXY_PORT}
console_msg_log: 7
EOF

    echo "Configuration generated successfully!"
}

# Start all servers in single container
start_servers() {
    echo "=== Starting rAthena Servers ==="
    
    # Create log directory
    mkdir -p log
    
    # Start login server in background
    echo "Starting login-server..."
    ./login-server > log/login.log 2>&1 &
    LOGIN_PID=$!
    echo "Login server started (PID: $LOGIN_PID)"
    
    # Wait a moment for login server to initialize
    sleep 2
    
    # Start char server in background  
    echo "Starting char-server..."
    ./char-server > log/char.log 2>&1 &
    CHAR_PID=$!
    echo "Char server started (PID: $CHAR_PID)"
    
    # Wait a moment for char server to connect to login
    sleep 2
    
    # Start map server in background
    echo "Starting map-server..."
    ./map-server > log/map.log 2>&1 &
    MAP_PID=$!
    echo "Map server started (PID: $MAP_PID)"
    
    # Store PIDs for cleanup
    PIDS=($LOGIN_PID $CHAR_PID $MAP_PID)
    
    # Setup signal handlers for graceful shutdown
    trap "echo 'Shutting down servers...'; kill ${PIDS[@]} 2>/dev/null || true; exit 0" TERM INT
    
    echo "All servers started successfully!"
    echo "PIDs: Login=$LOGIN_PID, Char=$CHAR_PID, Map=$MAP_PID"
    echo "Logs available in: log/login.log, log/char.log, log/map.log"
    
    # Monitor processes and logs
    while true; do
        # Check if any process died
        for pid in "${PIDS[@]}"; do
            if ! kill -0 "$pid" 2>/dev/null; then
                echo "Process $pid died! Shutting down..."
                kill "${PIDS[@]}" 2>/dev/null || true
                exit 1
            fi
        done
        
        # Show recent log entries every 30 seconds
        sleep 30
        echo "=== Server Status Check ==="
        echo "Login server (last 3 lines):"
        tail -n 3 log/login.log || echo "No login log yet"
        echo "Char server (last 3 lines):"  
        tail -n 3 log/char.log || echo "No char log yet"
        echo "Map server (last 3 lines):"
        tail -n 3 log/map.log || echo "No map log yet"
        echo "=========================="
    done
}

# Main execution
if [[ $# -eq 0 ]]; then
    # Default: start all services for Railway deployment
    generate_railway_config
    start_servers
else
    # Allow running specific commands
    exec "$@"
fi