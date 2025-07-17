#!/bin/bash

if warp-cli --accept-tos status | grep -q Disconnected; then
    warp-cli --accept-tos connect
    sleep 2

    # still disconnected
    if warp-cli --accept-tos status | grep -q Disconnected; then
        exit 1
    fi
fi

exit 0
