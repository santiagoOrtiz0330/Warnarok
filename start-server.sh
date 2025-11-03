#!/bin/bash
# Script para iniciar el servidor de Ragnarok Online en Linux

echo "Iniciando Ragnarok Online server..."

# Esperar a que MySQL esté listo (si usas Railway MySQL)
sleep 5

# Levantar los 3 servidores
./login-server & 
./char-server & 
./map-server

# Mantener el contenedor corriendo
wait
