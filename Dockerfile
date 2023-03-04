FROM alpine:latest
RUN apk update && apk add speedtest-cli
CMD speedtest-cli
  
