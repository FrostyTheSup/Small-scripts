#! /bin/bash

for FOLDER in ./*
do
	SEASONNUMBER="${FOLDER:9}"
	if [ "$SEASONNUMBER" -lt "10" ]
	then
		NEWNAME="S0${SEASONNUMBER}E"
#		echo "$NEWNAME"
	else
		NEWNAME="S${SEASONNUMBER}E"
	fi

#	echo $(pwd)
	cd "$FOLDER"
#	echo $(pwd)
	rename '' "$NEWNAME" *
	rename ' ' ' - ' *
	cd ..
done
exit 0
