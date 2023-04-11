#!/bin/bash

loop_duration=$1
pause_duration=$2

# Set the text attributes for the header row
tput bold
printf "%-20s %-20s %-20s\n" "Remaining Time" "Total Time Elapsed" "Number of Loops"
tput sgr0

count=0
remaining_time=$loop_duration
total_time_elapsed=0
while true; do
 say -v Kyoko start
  while [ $remaining_time -gt 0 ]; do
    # Print the current values in the table with a carriage return
    printf "\r%-20s %-20s %-20s" "$remaining_time" "$total_time_elapsed" "$count"

    # Decrement the remaining time counter and sleep for 1 second
    remaining_time=$((remaining_time - 1))
    total_time_elapsed=$((total_time_elapsed + 1))
    sleep 1
  done

  # Increment the loop counter
  count=$((count + 1))

  # Print the final values in the table after each interval
  printf "\r%-20s %-20s %-20s" "0" "$total_time_elapsed" "$count"

  say -v Kyoko stop

  remaining_time=$loop_duration
  sleep $pause_duration
done
