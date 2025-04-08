#!/bin/bash

# Savepoint.Protocol CLI Tool: Keeper Extractor
# USAGE:
#   Use this after you’ve split your ChatGPT export into chunks (using the above script).
#   This will extract every `keeper_message` (if any exist) from those chunks.
#
#   To run:
#     bash scripts/sp-keeper-extract.sh
#
#   Output:
#     Creates a `keeper_messages/` folder with files like:
#       keeper_0001.json, keeper_0002.json, etc.

mkdir -p keeper_messages

jq -c '.[] | .keeper_messages[]?' savepoint_chunks/*.json | nl -n rz -w 4 | while read -r number line; do
  echo "$line" > "keeper_messages/keeper_$(printf "%04d" $number).json"
done

echo "✅ Extracted keeper messages to ./keeper_messages/"
