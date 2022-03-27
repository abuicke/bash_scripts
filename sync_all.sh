#!/bin/sh
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sh /home/fraterboots/sync.sh Pictures
sh /home/fraterboots/sync.sh Documents
