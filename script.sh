#!/bin/bash

loop_duration=$1
pause_duration=$2

while true; do
  # Play a sound to signal the start of the loop
  echo start
  say -v Kyoko start
  sleep $loop_duration

  # Play a sound to signal the end of the loop
  echo stop
  say -v Kyoko stop
  sleep $pause_duration
done
