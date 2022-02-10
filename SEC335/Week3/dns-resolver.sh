#!/bin/bash
network=$1
dns=$2
echo "DNS resolution for $1"
for host in $(seq 1 254); do
    lookup=$(timeout .1 nslookup "$network.$host" "$dns")
      if [[ $? -eq 0 ]]
      then
       echo "$lookup"
      fi

done
