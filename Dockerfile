FROM debian:latest

RUN apt-get update && apt install -y --no-install-recommends \
  curl  \
  && apt upgrade -y \
  && rm -rf /var/lib/apt/lists/* 

COPY ping.sh /ping.sh
RUN chmod +x /ping.sh

ENTRYPOINT ["bash", "-c", "/ping.sh ${{ inputs.url inputs.attempts }}"]