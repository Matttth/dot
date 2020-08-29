#!/usr/bin/sh
# xrandr | grep " connected" | cut -d " " -f1 | grep "HDMI" && echo "2 mons" || echo "1 mon"
n=$(xrandr | grep -c " connected")
[ "$n" != 1 ] && MAINM="HDMI2" ; SIDEM="eDP1" || MAINM="eDP1" ; SIDEM=""

[ "$SIDEM" = "" ] &&

export MAINM
export SIDEM
