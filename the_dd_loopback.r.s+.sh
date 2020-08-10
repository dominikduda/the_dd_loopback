#!/bin/bash

lockfile="${HOME}/.the_dd_loopback_enabled"

tile() {
  if [ ! -f "$lockfile" ]; then
    echo ':microphone::mute: | emojize=true'
  else
    echo ':microphone::sound: | emojize=true'
  fi
}

toggle() {
  if [ ! -f "$lockfile" ]; then
    echo "Enable loopback | bash='touch $lockfile; pactl load-module module-loopback latency_msec=1' terminal=false refresh=true"
  else
    echo "Disable loopback | bash='rm $lockfile; pactl unload-module module-loopback' terminal=false refresh=true"
  fi
}

tile
echo "---"
toggle
