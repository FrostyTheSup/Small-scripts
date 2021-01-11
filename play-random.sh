#! /bin/bash

# Simple script to play a random file in a folder


TRACK=$(ls| sort -R| tail -n 1)

#echo "$TRACK"
mpv "$TRACK"

#add feature to stop track repeats
