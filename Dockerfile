FROM debian:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install sqlite3 && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir -p /root/db

WORKDIR /root/db
ENTRYPOINT [ "sqlite3" ]
