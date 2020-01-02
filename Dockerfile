FROM ubuntu

WORKDIR /opt/vapor
COPY vapor .
RUN apt update && apt install -y wget libcurl4 software-properties-common && \
wget -qO- https://apt.vapor.sh | bash && \
apt install -y swift vapor && \
vapor build

EXPOSE 8080

ENTRYPOINT vapor run
