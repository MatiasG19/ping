FROM alpine/curl:8.14.1

LABEL maintainer "MatiasG19"
LABEL org.opencontainers.image.description "Simple ping action / script using curl"

RUN apk update && apk add --no-cache bash iproute2 gawk

COPY ping.sh /ping.sh
RUN chmod +x /ping.sh

ENTRYPOINT ["/ping.sh"]
