#!/usr/bin/env bash
# Wait for weave interface to go up
ITERS="0";
while [-n `ifconfig |grep weave` ]
do
    sleep 0.1
    ITERS$[$ITERS+1]
    if [ $ITERS > 50 ]; then
        echo "No weave network detected"
        exit -1
    fi
done
exec /consul $@