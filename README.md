PCTV 461e Fix for Raspberry Pi4 running Kernal 4.19.75-v7l+

Added the following to the config file "over_voltage=2" this extends the time before the TVHEADEND "No Signal error" occurs but doesn;t fix it entirely.

Changed the following lines in "etc/default/tvheadend" to enable auto loggin file 

TVH_DEBUG=1

TVH_ARGS="-l /home/hts/log/tvheadend.log"


check_signal.sh checks the error log (I run this on a 1 minute cron) if the error occurs TVHeadend stops/ the USB port is reset / TVHeadend starts - no perfect or ideal but it doesn't work

Firmware for PCTV 461e attached

Not the best solution but a semi working one.

Thanks 
