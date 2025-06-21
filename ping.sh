#!/bin/bash

attempt=1

while [ $attempt -le $ATTEMPTS ]; do
    if curl -f -s "$URL"; then
    echo "Ping successful!"
    exit 0
    else
    echo "Attempt $attempt of $ATTEMPTS"
    attempt=$((attempt + 1))
    sleep 5  # Wait for 5 seconds before retrying
    fi
done

echo "Could not reach url after $ATTEMPTS attempts."
exit 1