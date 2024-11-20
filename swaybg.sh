#!/bin/bash
pid=$(pidof swaybg)
if [ -n "$pid" ]; then
kill $pid
fi

img=$(find /usr/share/backgrounds/archlinux/ -type f | shuf -n1) 
/usr/bin/swaybg -m fill -i $img
