#!/bin/bash
if [ "$1" == "" ];
then
	echo "IP Address required"
	echo "syntax: ./ipsweep.sh ip"
else
	echo "Pinging Started on" "$1.x"
	echo "Reachable networks: "
	for ip in `seq 1 254`;do
		ping $1.$ip -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
fi
