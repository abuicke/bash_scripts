#!/bin/sh

RSYNC_SOURCE="/mnt/nts/Users/buick/${1}/"
RSYNC_TARGET="/home/fraterboots/${@: -1}/"

if [ ! -d $RSYNC_SOURCE ]; then
	echo "${RSYNC_SOURCE} does not exist"
	exit 1
fi

## Confirm sync with yes/no answer
read -p "Sync ${RSYNC_SOURCE} to ${RSYNC_TARGET} (y/N)? " ans

## Sanitise yes/no answer to either "y" or "n"
case "${ans:0:1}" in
	[Yy]) ans="y" ;;
	[Nn]) ans="n" ;;
esac

## Perform sync if answer is Yes
if [ $ans == "y" ]; then
	echo "Syncing ${RSYNC_SPOURCE} to ${RSYNC_TARGET}..."
	rsync -varih --delete --delete-excluded  --progress "$RSYNC_SOURCE" "$RSYNC_TARGET"
else
	echo "Sycn cancelled"
fi
