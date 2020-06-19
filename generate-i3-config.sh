#! /bin/bash

if [ "$1" == "-h" ]; then
	echo "Generates i3 & py3status config files specific to hostname of machine"
	exit 1
fi

CONFIG=$(hostname)

if [ $CONFIG != "lenny" ] && [ $CONFIG != "kilroy" ]; then
	echo "This is not the machine you are looking for"
	exit 2
fi

I3=~/.config/i3/
I3STATUS=~/.config/i3status/

cat $I3"i3-common" $I3"i3-"$CONFIG > $I3"config"

cat $I3STATUS"i3-common" $I3STATUS"i3-"$CONFIG > $I3STATUS"config"
exit 0
