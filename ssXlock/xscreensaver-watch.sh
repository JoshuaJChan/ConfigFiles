#!/bin/sh
# Watch xscreensaver and react to status changes.
#
# Replaced my previous perl-based recipe with this:
# http://semicomplete.googlecode.com/svn/tools/xscreensaver-watch.sh
#
# Include somewhere in X session startup with:
#
#     xscreensaver-watch &

lock() {
    # Log this somewhere with `date` instead of just echoing.
    # echo `uname -n` screen is now blank
    # Do other things here, like stop music playback & mute speakers.
	:
}

unlock() {
# Log this somewhere with `date` instead of just echoing.
	echo `uname -n` screen is now unblank
# Do other things here, like resume music playback & unmute speakers.
	i3lock -i "$HOME/ssXlock/elonmusksmallerprob.png"
}

# The purpose of -watch is to print a line each time the screensaver changes state
# The output is piped into grep where an "UNBLANK" string is search for
# If received, call unlock() and eventually calls i3lock
# grep -q is quiet output, ^ is from beginning of line

$exitCounter = 0

xscreensaver-command -watch | while read watchOutput; do
# echo "$watchOutput" | grep -q '^BLANK' && lock
# echo "$watchOutput" >> ~/tmp.txt
	if [$exitCounter = 1]; then
		echo "$watchOutput" | grep -q '^UNBLANK' && unlock
		break
	else
		echo "$watchOutput" | grep -q '^UNBLANK' && unlock
	fi
	((exitCounter++))
done
