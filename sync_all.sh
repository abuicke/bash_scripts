#!/bin/sh
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#/home/fraterboots/sync.sh Pictures
#/home/fraterboots/sync.sh Documents
