#!/bin/sh
set -e

### BEGIN INIT INFO
# Provides:          mystartup
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO


DIRECTORY_PATH='<path to repo>'


#----------------------------------------------------------

WID=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)"| awk '{print $5}')
xdotool windowfocus $WID
xdotool key ctrl+shift+t

#rename shell
guake -r '<terminal_name>' -e "cd $DIRECTORY_REPO;" -n '';
guake -e 'cwd=$(pwd); command;'

#-----------------------------------------------------------

WID=$(xprop -root | grep "_NET_ACTIVE_WINDOW(WINDOW)"| awk '{print $5}')
xdotool windowfocus $WID
xdotool key ctrl+shift+t

guake -r '<terminal_name>' -e "cd $DASHBOARD_REPO; clear;" -n '';