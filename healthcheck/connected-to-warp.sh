#!/bin/bash

if warp-cli --accept-tos status | grep -q Connected; then
    exit 0
fi

warp-cli --accept-tos connect
sleep 2

exit 1
