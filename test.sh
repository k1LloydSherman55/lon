#!/bin/bash
SERVICE="feelingsurf/viewer:stable"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE found"
else
    echo "$SERVICE not found"  
fi
