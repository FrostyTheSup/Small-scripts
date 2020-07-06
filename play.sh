#! /bin/bash

if [ "$1" == "next" ]
then
	LASTEPISODE=$(ls -ltrh| tail -n 1| awk '{print $9}')
	SEASON=${LASTEPISODE: 1:2}
	EPISODE=${LASTEPIDODE: -2}
	NEXTEPISODE=$(printf %02d "$((10#$EPISODE + 1))")

touch "$1"
vlc "$1" -f >/dev/null 2>&1&
exit 0

# New feature (play.sh next): plays video after the most recently played
