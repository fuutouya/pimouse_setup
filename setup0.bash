#!/bin/bash -xve

### BEGIN INIT INFO
# Provides:		raspimouse
# Default-Start:	2 3 4 5
# Default-Stop:		0 6
# Short-Description:	StartUp
### END INIT INFO

exec 2> /tmp/setup.log 

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 > /dev/rtmotoren0
