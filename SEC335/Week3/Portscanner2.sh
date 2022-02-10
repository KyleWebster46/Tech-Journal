#!/bin/bash
hostfile=$1
portfile=$2
echo "host,port"
for host in $(seq 1 254); do
    timeout .1 bash -c "echo >/dev/tcp/$hostfile.$host/$portfile" 2>/dev/null &&
      echo "$hostfile.$host,$portfile"
done
