#!/bin/sh
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

sh /home/fraterboots/sync.sh Pictures
sh /home/fraterboots/sync.sh Documents
sh /home/fraterboots/sync.sh Videos
sh /home/fraterboots/sync.sh Desktop
sh /home/fraterboots/sync.sh Downloads
sh /home/fraterboots/sync.sh AndroidStudioProjects
sh /home/fraterboots/sync.sh github
sh /home/fraterboots/sync.sh movies
