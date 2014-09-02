#!/system/bin/sh

# Load Wireless modules
/system/bin/insmod /system/lib/modules/cw1200_core.ko macaddr=$(/sbin/cat /data/etc/wlan_macaddr)
/system/bin/insmod /system/lib/modules/cw1200_wlan.ko
