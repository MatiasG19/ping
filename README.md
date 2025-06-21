# Ping

Simple ping action / script using curl.

## Bash

```sh
chmod +x ./ping.sh
URL=www.google.com ATTEMPTS=10 ./ping.sh
```

## Docker

```sh
docker build -t ping .
docker run -e URL=www.google.com -e ATTEMPTS=10 --network=host ping
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
```
