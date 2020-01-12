#!/bin/sh
#
# Contains instructions for opening RSS links in browser
# - $@ is all parameters from the script
# - &>/dev/null means to send all output to /dev/null, i.e. silencing console output
# - & means to fork this process, allowing the parent to continue running
# All together, it opens the provided links in firefox, silencing output, 
# while allowing newsboat to continue running

/usr/bin/firefox "$@" &>/dev/null &
