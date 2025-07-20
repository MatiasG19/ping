# Ping

Simple ping action / script using curl.

## Bash

```sh
chmod +x ./ping.sh
./ping.sh www.google.com 10 "echo 'ping failed'"
```

## Docker

```sh
docker build -t ping .
docker run ping www.google.com 10 "echo 'ping failed'"
```

## GitHub Action

```yml
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Ping
        uses: matiasg19/ping@main
        with:
          url: wwww.google.com
          attempts: 10
          on-fail: "echo 'ping failed'"
```
