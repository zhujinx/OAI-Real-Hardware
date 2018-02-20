#!/bin/bash

cd /opt/oai/openair-cn/scripts

# Kill off running function.
./run_mme -k >/dev/null 2>&1
sleep 1

# Startup function.
screen -S mme -d -m -h 10000 /bin/bash -c "./run_mme"

# Do some cleanup.
screen -wipe >/dev/null 2>&1

exit 0
