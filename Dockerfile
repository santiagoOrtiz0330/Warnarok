# -----------------------------
# Etapa 1: Compilación
# -----------------------------
FROM ubuntu:22.04 AS builder

# Instalar dependencias
RUN apt update && apt install -y build-essential git cmake mysql-client libmysqlclient-dev zlib1g-dev libpcre3-dev

WORKDIR /build

# Copiar solo los archivos que afectan la compilación
COPY ./src ./src
COPY ./configure .
COPY ./Makefile .
COPY ./3rdparty ./3rdparty

# Configurar y compilar
RUN ./configure && make sql

# -----------------------------
# Etapa 2: Imagen final
# -----------------------------
FROM ubuntu:22.04

# Instalar solo lo necesario para ejecutar
RUN apt update && apt install -y libmysqlclient-dev zlib1g-dev libpcre3-dev

WORKDIR /app

# Copiar archivos compilados desde la etapa anterior
COPY --from=builder /build/login-server .
COPY --from=builder /build/char-server .
COPY --from=builder /build/map-server .

# Copiar configuraciones y script de inicio
COPY ./conf ./conf
COPY ./start-server.sh .
RUN chmod +x start-server.sh

# Exponer los puertos
EXPOSE 6900 6121 5121 8888

# Comando de inicio
CMD ["./start-server.sh"]
