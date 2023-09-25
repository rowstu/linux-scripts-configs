#!/bin/bash

SERVICE=fluidsynth

# launch fluidsynth in screen session
screen -d -m -S fluid fluidsynth -a alsa /usr/share/soundfonts/FluidR3_GM.sf2 -z 64 -c 2 -r 48000 -g 6

sleep 5

# get keyboard input into variable
INPUT=`aconnect -l | grep Keystation | grep client | cut -d " " -f2 | cut -b1-2`

# get fluidsynth output
OUTPUT=`aconnect -l | grep FLUID | grep client | cut -d " " -f2 | cut -b1-3`

# do the do
aconnect $INPUT $OUTPUT


while :
do
	#if pgrep "$SERVICE" >/dev/null 2>&1 ; then
	#	    echo "$SERVICE is running"
	#else
	#	echo "$SERVICE is not running"
	#fi


	if aconnect -l | grep Keystation ; then
		echo "Keyboard connected"
	else
		pkill "$SERVICE"
		break
	fi

	sleep 2
done
