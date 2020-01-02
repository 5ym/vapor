FROM ubuntu

COPY . .
RUN apt install curl && \
curl -sL https://apt.vapor.sh | sh && \
apt install swift vapor && \
vapor build

EXPOSE 8080

ENTRYPOINT vapor run