#!/usr/bin/env bash

# check if polybar is running and kill or launch it
if ps -e | grep -e polybar
	then
		killall -q polybar
else 
	echo "---" | tee -a /tmp/mybar.log /tmp/bottom.log;
	polybar mybar | tee -a /tmp/mybar.log & disown;
	polybar bottom | tee -a /tmp/bottom.log & disown;
fi
