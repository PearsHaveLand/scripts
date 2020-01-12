#!/bin/sh
#
# Runs newsboat with the custom configuration file
# -a <URL>: append the url to the urls file
#

NEWSBOAT_PATH="$HOME/.config/newsboat"

if [ $# = 0 ]; then
	newsboat -u "$NEWSBOAT_PATH/urls" -c "$NEWSBOAT_PATH/cache" -C "$NEWSBOAT_PATH/config"
elif [ $# > 2 ]; then
	option="$1"
	case ${option} in
	-a) echo $2 >> "$NEWSBOAT_PATH/urls"
		;;
	-l) cat "$NEWSBOAT_PATH/urls"
		;;
	-E) vim "$NEWSBOAT_PATH/urls"
		;;
	esac
fi
