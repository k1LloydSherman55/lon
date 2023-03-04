#!/bin/bash
SERVICE="feelingsurf"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "Process found"
else
    echo "Not found"  
fi
