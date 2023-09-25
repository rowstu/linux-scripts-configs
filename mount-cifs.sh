#!/bin/bash

sudo mount -t cifs -o vers=1.0,user=username,pass=password,uid=1000 //server/share /mountpoint/

retVal=$?
if [ $retVal -ne 0 ]; then
    echo "Error mounting server"
fi

