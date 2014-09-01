#!/system/bin/sh

# Load Wireless modules
/system/bin/insmod /system/lib/modules/cw1200_core.ko macaddr=$(/system/bin/cat /data/etc/wlan_macaddr)
/system/bin/insmod /system/lib/modules/cw1200_wlan.ko

# Create p2p0 interface
/system/bin/iw phy phy0 interface add p2p0 type managed
ifconfig p2p0 hw ether $(hexdump -n6 -e '1/1 ":%02X"' /dev/random | tail -c 17)
