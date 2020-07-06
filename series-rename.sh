#! /bin/bash

if [ "$1" == "-h" ]
then
	echo "Usage: $0 Season 1 ... Season n"
	exit 1
fi

for FOLDER in "$@"
do
	FOLDERNUMBER="${FOLDER:7}"
	if [ $FOLDERNUMBER -lt 10 ]
	then
		NEWNAME="S0${FOLDERNUMBER}E"
		echo "$NEWNAME"
	else
		NEWNAME="S${FOLDERNUMBER}E"
	fi
	
	rename '' $NEWNAME "$FOLDER"/*
	#rename ' ' ' - ' "$FOLDER"/*
done
exit 0
