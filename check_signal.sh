#!/bin/bash

#Checks the No Signal erro hasn't occured within TVHEADEND 

if [[ $(cat /home/hts/log/tvheadend.log) == *"No input source"* ]]; then

	echo "Turning off tvheadend"
	sudo service tvheadend stop

	echo "Deleting log file"
	sudo rm /home/hts/log/tvheadend.log

        echo "Resetting USB"
	sudo /home/hts/usb/usbreset /dev/bus/usb/001/003

	echo "USB Reset"
	sudo service tvheadend start

	echo "TV turned on"
	tvheadend --libav

	echo "TV Log turned on"

else

	echo "PCTV 461e live"
	sudo rm /home/hts/log/tvheadend.log
fi
