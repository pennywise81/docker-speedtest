FROM httpd:alpine

RUN apk update && apk add speedtest-cli jq
WORKDIR /speedtest

COPY index.html /usr/local/apache2/htdocs/
COPY perform_speedtest.sh .

RUN chmod +x perform_speedtest.sh
RUN ["sh", "perform_speedtest.sh"]