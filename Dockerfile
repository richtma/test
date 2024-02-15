FROM debian:12-slim

RUN apt update && DEBIAN_FRONTEND=noninteractive \
    apt install -y --no-install-recommends \
    blender && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["blender"]
