FROM alpine:latest
RUN apk update && apk add speedtest-cli jq
CMD speedtest-cli --json | jq -r '[.timestamp, .ping, .download, .upload]|@csv' >> ./results.csv
  
