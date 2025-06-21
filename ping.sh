#!/bin/bash

attempt=1
while [ $attempt -le "$2" ]; do
  if curl -X GET "$1"; then
    echo
    echo
    echo "Ping to $1 successful!"
    exit 0
  else
    echo "Attempt $attempt of $2"
    attempt=$((attempt + 1))
    sleep 5
  fi
done

echo
echo "Could not reach $1 after $2 attempts."
exit 1