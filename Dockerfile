FROM alpine/curl:8.14.1

RUN apk update && apk add --no-cache iproute2 gawk

COPY ping.sh /ping.sh
RUN ls
RUN cwd
RUN chmod +x /ping.sh

ENTRYPOINT ["/ping.sh"]