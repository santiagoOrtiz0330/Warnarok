FROM ubuntu:22.04

# Instalar dependencias
RUN apt update && apt install -y build-essential git cmake mysql-client libmysqlclient-dev zlib1g-dev libpcre3-dev

# Copiar los archivos del servidor
WORKDIR /app
COPY . .

# Dar permiso de ejecución al script de inicio
RUN chmod +x start-server.sh

# Compilar rAthena
RUN ./configure && make clean && make sql

# Exponer los puertos (por defecto Ragnarok usa 6900, 6121, 5121)
EXPOSE 6900 6121 5121

# Ejecutar el script de inicio
CMD ["./start-server.sh"]
