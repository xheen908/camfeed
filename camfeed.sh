#!/bin/bash

rm /etc/opkg/secret-feed.conf
rm /etc/opkg/deb-feed.conf
opkg remove softcam-feed-universal
cd /tmp
wget https://github.com/xheen908/camfeed/blob/master/softcam-feed-universal_4.3-r0_all.ipk
opkg install softcam-feed-universal_4.3-r0_all.ipk
opkg update
cd
rm camfeed.sh
