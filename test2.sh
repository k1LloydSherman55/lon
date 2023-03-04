#!/bin/bash
SERVICE="feelingsurf/viewer:stable"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "Process found"
else
    echo "Not found"  
fi
