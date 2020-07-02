#! /bin/bash

touch "$1"
vlc "$1" -f >/dev/null 2>&1&
exit 0
