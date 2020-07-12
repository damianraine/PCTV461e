#!/bin/bash

#Checks the No Signal erro hasn't occured within TVHEADEND 

if [[ $(cat /home/hts/log/tvheadend.log) == *"poll TIMEOUT"* ]] ; then

	echo "Turning off tvheadend"
	service tvheadend stop

	echo "Deleting log file"
	rm /home/hts/log/tvheadend.log

        echo "Resetting USB"
	/home/hts/usb/usbreset /dev/bus/usb/001/003

	echo "USB Reset"
	service tvheadend start

	echo "TV turned on"
	tvheadend --libav

	echo "TV Log turned on"

else

	echo "PCTV 461e live"
	rm /home/hts/log/tvheadend.log
fi
