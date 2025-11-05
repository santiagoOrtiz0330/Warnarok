#!/bin/bash

echo "=== rAthena Railway Startup ==="

# Esperar a que la base de datos esté disponible
if [ ! -z "$DATABASE_HOST" ]; then
    echo "Waiting for database at $DATABASE_HOST:$DATABASE_PORT..."
    /bin/wait-for $DATABASE_HOST:$DATABASE_PORT -t 60 -- echo "Database is ready!"
else
    echo "No database host specified, continuing..."
fi

# Función para iniciar un servicio
start_service() {
    local service_name=$1
    local executable=$2
    echo "Starting $service_name..."
    ./$executable &
    local pid=$!
    echo "$service_name started with PID $pid"
    sleep 2
}

# Iniciar servicios en orden
start_service "Login Server" "login-server"
start_service "Char Server" "char-server"  
start_service "Map Server" "map-server"
start_service "Web Server" "web-server"

echo "All services started!"

# Mantener el contenedor corriendo y mostrar logs
echo "Monitoring services..."
tail -f log/*.log 2>/dev/null &

# Esperar a que todos los procesos terminen
wait