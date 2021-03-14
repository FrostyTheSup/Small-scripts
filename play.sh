#! /bin/bash


PLAY=''
case $1 in

	-h)
		echo "Options:
		-h		--	help
		randrom		--	Play random"
		exit 0
		;;

	random)
		mpv --shuffle * --fs
		exit 0
		;;
	
	next)
		LASTEPISODE=$(ls -ltrh| tail -n 1| awk '{print $9}')
		SEASON=${LASTEPISODE: 1:2}
		EPISODE=${LASTEPISODE: 4:2}
		NEXTEPISODE=${LASTEPISODE: 0: 4}$(printf %02d "$((10#$EPISODE + 1))")

		if ls ${NEXTEPISODE}* 1> /dev/null 2>&1
		then
			PLAY=$NEXTEPISODE
		else
			PLAY="S$(printf %02d "$((10#$SEASON + 1))")E01"
		fi
		;;

	S??E*)
		PLAY="$1"
		;;
esac

touch "${PLAY}"*
mpv "${PLAY}"* --fs >/dev/null 2>&1&
exit 0
