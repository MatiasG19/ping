#!/bin/bash

attempt=1
while [ $attempt -le "$1" ]; do
  if curl -X GET "$0"; then
    echo
    echo
    echo "Ping to $0 successful!"
    exit 0
  else
    echo "Attempt $attempt of $1"
    attempt=$((attempt + 1))
    sleep 5
  fi
done

echo
echo "Could not reach $0 after $1 attempts."
exit 1