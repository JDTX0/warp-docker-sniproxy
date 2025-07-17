#!/bin/bash

if warp-cli --accept-tos status | grep -q Connected; then
    echo "Healthcheck succeeded, Warp is connected"
    exit 0
fi

warp-cli --accept-tos connect
sleep 2

exit 1
