#!/bin/sh

#if [ `ifconfig | grep tap0 | awk '{ print $1 }'` == "tap0:" ]
#then
#	echo "shutting down..."
#else
#	echo "else"
#fi

echo "Press [CTRL+C] to stop.."

#INTERFACE="tap0"
INTERFACE="tun0"
#RESULT=`ifconfig | sed -n /${INTERFACE}/p`
#RESULT=`ifconfig | grep $INTERFACE | awk '{ print $1 }'`


while true
do
	RESULT=`ifconfig | grep $INTERFACE | awk '{ print $1 }'`
	if [ -z "$RESULT" ]; then
    		echo `date +'%m/%d/%Y %H:%M:%S'` "no tunnel interface found, killing transmission client"
    		killall transmission-daemon
    		killall transmission-qt
    		killall transmission-gtk
		exit
	else
    		echo `date +'%m/%d/%Y %H:%M:%S'` "Interface $RESULT Found"
	fi

	sleep 20

#someone killed me
done

