#!/bin/bash

if warp-cli status | grep -q Disconnected; then
    warp-cli connect
    sleep 2

    # still disconnected
    if warp-cli status | grep -q Disconnected; then
        exit 1
    fi
fi

exit 0
