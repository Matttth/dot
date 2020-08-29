#!/usr/bin/sh

killall -qw polybar
polybar main &
mons | grep "HDMI" && polybar side &
