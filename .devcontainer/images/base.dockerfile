ARG IMAGE_VERSION=ubuntu-24.04

FROM mcr.microsoft.com/devcontainers/base:${IMAGE_VERSION}

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
    ansible \
    python3-apt && \
  rm -rf /var/lib/apt/lists/*

CMD [ "sleep", "infinity" ]
