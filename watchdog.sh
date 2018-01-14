#!/bin/bash
while true
do
  if ! ping -c 1 -w 30 192.168.1.140 >/dev/null
  then
    date | tr '\n' ' ' >> watchdog.log
    echo "Keine Response vom Rig. Leite Neustart ein." >> watchdog.log
    python pwr_off.py;
  else
    # Alles OK.
  fi
  sleep 120;
done