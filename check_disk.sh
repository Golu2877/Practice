#!/bin/bash

#chech usage

usage=$(df -h / | awk 'nr==2 {print $5}' | sed 's/%//')
if [ "$usage" -gt 80]; then
	echo "disk usage is high: $usage%"
else 
	echo "disk usage is ok: $usage%"
fi

