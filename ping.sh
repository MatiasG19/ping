#!/bin/bash

attempt=1
while [ $attempt -le "$ATTEMPTS" ]; do
  if curl -X GET "$URL"; then
    echo
    echo
    echo "Ping to $URL successful!"
    exit 0
  else
    echo "Attempt $attempt of $ATTEMPTS"
    attempt=$((attempt + 1))
    sleep 5
  fi
done

echo
echo "Could not reach $URL after $ATTEMPTS attempts."
exit 1