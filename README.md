# Ping

Simple ping action / script using curl.

## Bash

```sh
chmod +x ./ping.sh
./ping.sh www.google.com 10
```

## Docker

```sh
docker build -t ping .
docker run --network=host ping www.google.com 10
```

> Use `network=host` when pinging localhost

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
```
