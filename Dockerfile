# -----------------------------
# Etapa 1: Compilación (solo cuando cambia el código fuente)
# -----------------------------
FROM ubuntu:22.04 AS builder

RUN apt update && apt install -y build-essential git cmake mysql-client libmysqlclient-dev zlib1g-dev libpcre3-dev

WORKDIR /app

# Copiamos solo los archivos de compilación
COPY src/ ./src/
COPY conf/ ./conf/
COPY 3rdparty/ ./3rdparty/
COPY CMakeLists.txt .
COPY configure .
COPY Makefile.in .
COPY configure.ac .

# Compilación rápida y paralela con PACKETVER para cliente 20211103
RUN ./configure --enable-packetver=20211103 && make server -j$(nproc)

# -----------------------------
# Etapa 2: Imagen final
# -----------------------------
FROM ubuntu:22.04

RUN apt update && apt install -y mysql-client zlib1g libpcre3

WORKDIR /app

COPY --from=builder /app/login-server /app/char-server /app/map-server /app/
COPY conf/ ./conf/
COPY npc/ ./npc/
COPY db/ ./db/
COPY docker-entrypoint.sh .
COPY start-server.sh .

RUN chmod +x start-server.sh docker-entrypoint.sh

EXPOSE 6900 6121 5121

CMD ["./docker-entrypoint.sh"]
