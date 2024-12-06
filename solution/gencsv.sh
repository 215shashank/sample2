#!/bin/bash
start=$1
end=$2

if [ -z "$start" ] || [ -z "$end" ]; then
  echo "Usage: $0 <start_index> <end_index>"
  exit 1
fi

seq "$start" "$end" | awk '{print $1 ", " int(rand() * 100)}' > inputFile

