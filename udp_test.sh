#!/bin/bash


TARGETS=("10.0.0.3" "10.0.1.3" "10.0.2.3" "10.0.3.3")


BANDWIDTH="1G"


DURATION="30"   


PACKET_SIZE="512"  


for TARGET in "${TARGETS[@]}"; do
    (sleep 1 && iperf -c "$TARGET" -u -b "$BANDWIDTH" -t "$DURATION" -l "$PACKET_SIZE") &
done


wait

echo 
