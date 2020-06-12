#! /bin/bash

if [ "$1" == "-h" ]; then
	echo "Usage: $0 i3-or-py3 i3-common i3-specific"
	exit 1
fi

CONFIG=$1
I3COMMON=$1
I3SPECIFIC=$2

case $CONFIG in

	"i3")
		CONFIGPATH=~/.config/i3/config
		;;

	"py3")
		CONFIGPATH=~/.config/i3status/config

	*)
		echo "you done messed up boi"
		exit 2
		;;
esac

cat $I3COMMON $I3SPECIFIC > $CONFIGPATH
exit 0
