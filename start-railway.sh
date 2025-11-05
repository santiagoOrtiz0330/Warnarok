#!/bin/bash

echo "=== rAthena Railway Startup ==="

# Verificar que tenemos las variables de entorno
echo "Database Host: $DATABASE_HOST"
echo "Database Port: $DATABASE_PORT"
echo "Database User: $DATABASE_USER"
echo "Database Name: $DATABASE_NAME"

# Obtener IP pública de Railway
PUBLIC_IP=$(curl -s ifconfig.me || echo "unknown")
echo "Public IP: $PUBLIC_IP"

# Crear directorios necesarios
mkdir -p conf/import
mkdir -p logs  # NUEVO: directorio para logs separados

# Copiar templates como base
echo "Copying configuration templates..."
cp conf/import-tmpl/* conf/import/ 2>/dev/null || echo "No templates to copy"

# Crear configuraciones específicas para Railway
echo "Creating Railway-specific configurations..."

# Inter configuration (database)
cat > conf/import/inter_conf.txt << EOF
// Database configuration for Railway
sql.db_hostname: ${DATABASE_HOST}
sql.db_port: ${DATABASE_PORT}
sql.db_username: ${DATABASE_USER}
sql.db_password: ${DATABASE_PASSWORD}
sql.db_database: ${DATABASE_NAME}

// Login database
login_server_ip: ${DATABASE_HOST}
login_server_port: ${DATABASE_PORT}
login_server_id: ${DATABASE_USER}
login_server_pw: ${DATABASE_PASSWORD}
login_server_db: ${DATABASE_NAME}

// Character database  
char_server_ip: ${DATABASE_HOST}
char_server_port: ${DATABASE_PORT}
char_server_id: ${DATABASE_USER}
char_server_pw: ${DATABASE_PASSWORD}
char_server_db: ${DATABASE_NAME}

// Map database
map_server_ip: ${DATABASE_HOST}
map_server_port: ${DATABASE_PORT}
map_server_id: ${DATABASE_USER}
map_server_pw: ${DATABASE_PASSWORD}
map_server_db: ${DATABASE_NAME}
EOF

# Login configuration
cat > conf/import/login_conf.txt << EOF
// Login server configuration for Railway

// Bind to all interfaces para recibir conexiones
login_ip: 0.0.0.0
login_port: 6900

// Enable web auth token
use_web_auth_token: yes

// AUMENTAR EL DELAY - 30 segundos en lugar de 10
disable_webtoken_delay: 30000

// Keep web tokens active longer
webtoken_expiration_time: 300000
EOF

# Char configuration - CLAVE: usar IP interna para comunicación interna
cat > conf/import/char_conf.txt << EOF
// Character server configuration for Railway

// Bind to all interfaces para recibir conexiones
char_ip: 0.0.0.0
char_port: 6121

// Conectar al login server usando IP interna
login_ip: 127.0.0.1
login_port: 6900

// IMPORTANTE: IP que se reporta al login server (debe ser IP interna)
char_server_ip: 0.0.0.0
char_server_port: 6121
EOF

# Map configuration
cat > conf/import/map_conf.txt << EOF
// Map server configuration for Railway
map_ip: 0.0.0.0
map_port: 5121

// Conectar al char server usando IP interna
char_ip: 127.0.0.1
char_port: 6121
EOF

# Web configuration
cat > conf/import/web_conf.txt << EOF
// Web server configuration for Railway
bind_ip: 0.0.0.0
web_port: 8888
sql.db_hostname: ${DATABASE_HOST}
sql.db_port: ${DATABASE_PORT}
sql.db_username: ${DATABASE_USER}
sql.db_password: ${DATABASE_PASSWORD}
sql.db_database: ${DATABASE_NAME}
EOF

echo "✓ All configurations created"

# Esperar a que la base de datos esté disponible
if [ ! -z "$DATABASE_HOST" ]; then
    echo "Waiting for database at $DATABASE_HOST:$DATABASE_PORT..."
    /bin/wait-for $DATABASE_HOST:$DATABASE_PORT -t 60 -- echo "Database is ready!"
    
    # Verificar si la base de datos necesita inicialización
    echo "Checking database initialization..."
    TABLE_COUNT=$(mysql -h${DATABASE_HOST} -P${DATABASE_PORT} -u${DATABASE_USER} -p${DATABASE_PASSWORD} ${DATABASE_NAME} -e "SHOW TABLES;" 2>/dev/null | wc -l)
    
    if [ "$TABLE_COUNT" -le 1 ]; then
        echo "Database appears empty, initializing with main.sql..."
        mysql -h${DATABASE_HOST} -P${DATABASE_PORT} -u${DATABASE_USER} -p${DATABASE_PASSWORD} ${DATABASE_NAME} < sql-files/main.sql
        echo "✓ Database initialized"
    else
        echo "✓ Database already contains tables"
    fi
else
    echo "WARNING: No database host specified!"
fi

# FUNCIÓN MODIFICADA para separar outputs de cada servicio
start_service() {
    local service_name=$1
    local executable=$2
    local logfile="logs/${service_name}.out"
    
    echo "Starting $service_name..."
    
    # Verificar que el ejecutable existe
    if [ ! -f "./$executable" ]; then
        echo "ERROR: $executable not found!"
        return 1
    fi
    
    # CLAVE: Redirigir output de cada servicio a archivo separado
    echo "Executing: ./$executable > $logfile 2>&1"
    ./$executable > "$logfile" 2>&1 &
    local pid=$!
    echo "$service_name started with PID $pid (output -> $logfile)"
    
    # Verificar que el proceso está corriendo
    sleep 3
    if kill -0 $pid 2>/dev/null; then
        echo "✓ $service_name is running (PID: $pid)"
    else
        echo "✗ $service_name failed to start!"
        echo "Error log:"
        cat "$logfile" 2>/dev/null || echo "No error log available"
    fi
    
    sleep 2
}

# Iniciar servicios en orden con outputs separados
start_service "login" "login-server"
sleep 5  # Dar tiempo al login server

start_service "char" "char-server"  
sleep 5  # Dar tiempo al char server para registrarse

start_service "map" "map-server"
sleep 3

start_service "web" "web-server"

echo "All services startup completed!"

# Verificar procesos activos
echo "=== Process Status ==="
ps aux | grep -E "(login|char|map|web)-server" | grep -v grep

# CREAR SCRIPT para monitorear logs separados
echo "Creating log monitoring script..."
cat > monitor-logs.sh << 'EOF'
#!/bin/bash
case "$1" in
    login) 
        echo "=== LOGIN SERVER OUTPUT ==="
        tail -f logs/login.out
        ;;
    char)  
        echo "=== CHAR SERVER OUTPUT ==="
        tail -f logs/char.out
        ;;
    map)   
        echo "=== MAP SERVER OUTPUT ==="
        tail -f logs/map.out
        ;;
    web)   
        echo "=== WEB SERVER OUTPUT ==="
        tail -f logs/web.out
        ;;
    all)   
        echo "=== ALL SERVICES OUTPUT ==="
        tail -f logs/*.out
        ;;
    list)
        echo "Available log files:"
        ls -la logs/
        ;;
    *)
        echo "Usage: $0 {login|char|map|web|all|list}"
        echo ""
        echo "Examples:"
        echo "  railway run ./monitor-logs.sh char    # Ver output del char server"
        echo "  railway run ./monitor-logs.sh login   # Ver output del login server"
        echo "  railway run ./monitor-logs.sh all     # Ver output de todos"
        echo "  railway run ./monitor-logs.sh list    # Ver archivos disponibles"
        ;;
esac
EOF

chmod +x monitor-logs.sh

# Mostrar información de uso
echo ""
echo "=== Log Files Created ==="
echo "Individual service outputs are now available in:"
ls -la logs/ 2>/dev/null || echo "No log files created yet"

echo ""
echo "=== How to Monitor Individual Services ==="
echo "To view real-time output of each service:"
echo "  railway run ./monitor-logs.sh char    # Ver char server output"
echo "  railway run ./monitor-logs.sh login   # Ver login server output"
echo "  railway run ./monitor-logs.sh map     # Ver map server output"
echo "  railway run ./monitor-logs.sh web     # Ver web server output"
echo "  railway run ./monitor-logs.sh all     # Ver todos juntos"
echo "  railway run ./monitor-logs.sh list    # Ver archivos disponibles"

# Mostrar contenido de configuraciones para debugging
echo ""
echo "=== Configuration Debug ==="
echo "Char config:"
head -10 conf/import/char_conf.txt 2>/dev/null || echo "No char_conf.txt found"

# Mostrar primeras líneas de cada log para verificar que funcionan
echo ""
echo "=== Initial Log Preview ==="
sleep 5  # Dar tiempo a que se generen logs
echo "Login server (first 3 lines):"
head -3 logs/login.out 2>/dev/null || echo "No login logs yet"

echo "Char server (first 3 lines):"
head -3 logs/char.out 2>/dev/null || echo "No char logs yet"

# Mantener el contenedor corriendo mostrando resumen
echo ""
echo "=== Container Monitoring ==="
echo "Services are running with separated logs. Use monitor-logs.sh to view individual outputs."

# Mostrar tail de logs combinado como respaldo
tail -f logs/*.out 2>/dev/null &

# Esperar a que todos los procesos terminen
wait