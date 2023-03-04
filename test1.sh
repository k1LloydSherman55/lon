#!/bin/bash
SERVICE="feelingsurf/viewer"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE found"
else
    echo "$SERVICE not found"  
fi
