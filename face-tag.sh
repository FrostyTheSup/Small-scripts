#! /bin/bash

# A script that takes a file name and at least one name, and creates a linked file in a folder of that person's name, making the folder if one does not yet exist

FILENAME=$1

for FACENAME in "${@:2}"
do
	echo loop

	mkdir -p "$FACENAME"

	ln -s "$(pwd)/$FILENAME" "$FACENAME"
done
