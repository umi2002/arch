#!/bin/bash

amixer set Master toggle

status=$(eww get muted)

if [[ "$status" == "true" ]]; then
    eww update muted=false
else
    eww update muted=true
fi
