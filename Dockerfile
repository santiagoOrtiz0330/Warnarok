# syntax=docker/dockerfile:1.6

##############################################
# Build stage - compiles the rAthena servers #
##############################################
FROM debian:bookworm-slim AS builder

ENV DEBIAN_FRONTEND=noninteractive \
    CCACHE_DIR=/root/.ccache

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        ccache \
        cmake \
        libmariadb-dev \
        libmariadb-dev-compat \
        libpcre3-dev \
        ninja-build \
        pkg-config \
        zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src

# Copy files that affect CMake configuration to leverage Docker cache.
COPY CMakeLists.txt ./
COPY src/CMakeLists.txt src/
COPY 3rdparty/CMakeLists.txt 3rdparty/

RUN cmake -S . -B build \
        -G Ninja \
        -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_C_COMPILER_LAUNCHER=ccache \
        -DCMAKE_CXX_COMPILER_LAUNCHER=ccache \
        -DINSTALL_TO_PATH=ON \
        -DINSTALL_PATH=/opt/rathena

# Copy the remainder of the source tree.
COPY . .

# Build and install the servers.
RUN cmake --build build --target install

##############################################
# Runtime stage - minimal image with servers #
##############################################
FROM debian:bookworm-slim

ENV DEBIAN_FRONTEND=noninteractive \
    RATHENA_HOME=/opt/rathena \
    RATHENA_CONF_DIR=/opt/rathena/conf \
    RATHENA_DATA_DIR=/opt/rathena

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        libmariadb3 \
        libmariadb-dev-compat \
        libpcre3 \
        zlib1g && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/rathena

COPY --from=builder /opt/rathena /opt/rathena
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

EXPOSE 6900 6121 5121 8888

ENTRYPOINT ["docker-entrypoint.sh"]
