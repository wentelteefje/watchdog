#!/bin/bash
while true
do
  if ! ping -c 1 -w 60 192.168.178.20 >/dev/null
  then
    date | tr '\n' ' ' >> watchdog.log
    echo "Keine Response vom Rig. Leite Neustart ein." >> watchdog.log
    python pwr_off.py
    sleep 600;
  else
    echo "Alles OK."
  fi

  sleep 120;
done
