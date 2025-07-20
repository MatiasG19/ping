#!/bin/bash

hostip=$(/sbin/ip route | awk '/default/ { print $3 }')
url=$1
# Replace localhost with host ip when script is executed in docker without "--network=host" option
url="${url//localhost/$hostip}"
attempts=$2
attempt=1
onfail=$3

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
if [ -z "$onfail" ]; then
    exit 0
fi
bash -c "$onfail"