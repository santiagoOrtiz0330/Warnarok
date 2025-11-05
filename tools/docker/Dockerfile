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
ARG CONFIGURE_FLAGS=

RUN chmod +x ./configure && \
    ./configure ${CONFIGURE_FLAGS} && \
    make server -j"$(nproc)"

# Runtime image --------------------------------------------------------------
FROM ubuntu:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        mysql-client \
        libmysqlclient21 \
        zlib1g \
        libpcre3 \
        bash && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /rathena

COPY --from=builder /rathena/login-server /rathena/char-server /rathena/map-server ./
COPY --from=builder /rathena/conf ./conf
COPY --from=builder /rathena/npc ./npc
COPY --from=builder /rathena/db ./db
COPY --from=builder /rathena/sql-files ./sql-files
COPY --from=builder /rathena/start-server.sh ./start-server.sh

RUN chmod +x login-server char-server map-server start-server.sh

# Only login needs to be published externally; other ports stay internal.
EXPOSE 6900

ENTRYPOINT ["./start-server.sh"]
