#!/bin/sh

# Check that the script is being
# run with super user privileges
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

dnf clean all
dnf autoremove
dnf update -y
