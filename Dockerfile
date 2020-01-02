FROM ubuntu

COPY . .
RUN apt update && apt install -y wget software-properties-common && \
wget -qO- https://apt.vapor.sh | bash && \
apt install -y swift vapor && \
vapor build

EXPOSE 8080

ENTRYPOINT vapor run
