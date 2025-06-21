#!/bin/bash

hostip=$(/sbin/ip route|awk '/default/ { print $3 }')
url=$1
attempts=$2
url="${url//localhost/$hostip}"

attempt=1
while [ $attempt -le "$attempts" ]; do
  if curl -X GET "$url"; then
    echo
    echo
    echo "Ping to $1 successful!"
    exit 0
  else
    echo "Attempt $attempt of $attempts"
    attempt=$((attempt + 1))
    sleep 5
  fi
done

echo
echo "Could not reach $url after $attempts attempts."
exit 1