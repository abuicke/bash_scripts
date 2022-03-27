#!/bin/sh

if [ $1 = "mount" ]; then
	mount -t ntfs-3g /dev/sda3 /mnt/nts
	echo "Windows partition now mounted at /mnt/nts"
 elif [ $1 = "unmount" ]; then
	umount /mnt/nts
	echo "Windows partition unmounted"
else
	echo "unrecognised option, type either \"mount\" or \"unmount\" after script name"
fi
