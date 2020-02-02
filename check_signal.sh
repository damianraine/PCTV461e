#!/bin/bash

#checks in the a there is a live connection to nordVPN - if not it connects
if [[ $(cat /home/hts/log/tvheadend.log) == *" "* ]]; then

	echo "Turning off tvheadend"
	sudo service tvheadend stop
	echo "Deleting log file"
	sudo rm /home/hts/log/tvheadend.log
        echo "Resetting USB"
	sudo ./usbreset /dev/bus/usb/001/003
	echo "USB Reset"
	sudo service tvheadend start
	echo "TV turned on"
	tvheadend --libav
	echo "TV Log turned on"

else

	echo "PCTV 461e live"

fi
