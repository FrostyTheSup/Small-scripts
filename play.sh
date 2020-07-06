#! /bin/bash

PLAY=''
if [ "$1" == "next" ]
then
	LASTEPISODE=$(ls -ltrh| tail -n 1| awk '{print $9}')
	SEASON=${LASTEPISODE: 1:2}
	EPISODE=${LASTEPIDODE: -2}
	NEXTEPISODE=${LASTEPISODE: 0: 4}$(printf %02d "$((10#$EPISODE + 1))")
	if [ -f "$NEXTEPISODE" ]
	then
		PLAY=$NEXTEPISODE
	else
		PLAY="S$(printf %02d "$((10#$SEASON + 1))")E01"
	fi
else
	PLAY="$1"
fi

touch "$PLAY"
vlc "$PLAY*" -f >/dev/null 2>&1&
exit 0
