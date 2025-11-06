##
# Build and runtime image for rAthena suitable for Railway-style deployments.
# Multi stage keeps the final image small while ensuring all binaries are
# executable. Only the login port needs to be published; char/map can remain
# bound to the internal interface.
##

FROM ubuntu:22.04 AS builder

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        git \
        cmake \
        mysql-client \
        libmysqlclient-dev \
        zlib1g-dev \
        libpcre3-dev \
        wget \
        ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /rathena

COPY . .

# Allow optional configure flags via build arg
ARG CONFIGURE_FLAGS="--enable-packetver=20200902"

RUN chmod +x ./configure && \
    ./configure ${CONFIGURE_FLAGS} && \
    make server

# Runtime image --------------------------------------------------------------
FROM ubuntu:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        mysql-client \
        libmysqlclient21 \
        zlib1g \
        libpcre3 \
        bash \
        python3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /rathena

COPY --from=builder /rathena/login-server /rathena/char-server /rathena/map-server ./
COPY --from=builder /rathena/conf ./conf
COPY --from=builder /rathena/npc ./npc
COPY --from=builder /rathena/db ./db
COPY --from=builder /rathena/sql-files ./sql-files

# Copy Railway-optimized entrypoint
COPY tools/docker/docker-entrypoint.sh ./docker-entrypoint.sh
COPY tools/docker/smart_proxy.py ./smart_proxy.py

RUN chmod +x login-server char-server map-server docker-entrypoint.sh smart_proxy.py

# Railway listens through the smart proxy on PORT (defaults to 6900)
EXPOSE 6900

ENTRYPOINT ["./docker-entrypoint.sh"]
