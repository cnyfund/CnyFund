#!/bin/bash

/opt/cnyfund/bin/cnyfund -datadir=/cnyfund stop
/bin/sleep 60
for pid in $(ps -ef | grep "start.sh" | awk '{print $2}'); do kill -9 $pid; done
