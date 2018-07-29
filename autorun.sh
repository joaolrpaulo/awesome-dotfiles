#!/usr/bin/env bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

setxkbmap -layout us -variant mac
run nm-applet
run compton
xrandr --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --off --output DP-7 --off --output DP-6 --off --output DP-5 --mode 2560x1440 --pos 5120x0 --rotate normal --output DP-4 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-3 --off --output DP-2 --off --output DP-1 --mode 2560x1440 --pos 2560x0 --rotate normal
