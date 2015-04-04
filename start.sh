#!/usr/bin/env bash
# Wait for weave interface to go up
ITERS=0;
while [[ `ifconfig |grep ethwe` = "" ]]
do
    sleep 1
done
exec /consul $@
