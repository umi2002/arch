#!/bin/bash

visible=$(eww get calendar_visible)

if [[ "$visible" == "true" ]] ; then
    eww update calendar_visible=false
    eww close calendar
else
    eww update calendar_visible=true
    eww open calendar
fi
