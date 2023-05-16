#!/bin/bash

pactl subscribe | grep --line-buffered "sink #" | while read -r line; do pactl list sinks | grep '^[[:space:]]Volume:' | head -n 1 | sed 's|.*[[:space:]]\([[:digit:]]\+%\).*|\1|'; done
