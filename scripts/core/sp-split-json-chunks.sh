#!/bin/bash

# Savepoint.Protocol CLI Tool: JSON Chunk Splitter
# USAGE:
#   Run this if you've exported your full ChatGPT history from https://chat.openai.com/share/export
#   and saved the `conversations.json` file into your current working folder.
#
#   This script will split that file into smaller 25-conversation chunks
#   so it’s easier to search, browse, and parse without hitting memory issues.
#
#   To run:
#     bash scripts/sp-split-json-chunks.sh conversations.json
#
#   Output:
#     Creates a folder called `savepoint_chunks/` with files like:
#       savepoint_chunk_01.json, savepoint_chunk_02.json, etc.

INPUT="$1"
CHUNK_SIZE=25
OUTDIR="savepoint_chunks"

mkdir -p "$OUTDIR"

TOTAL=$(jq length "$INPUT")
CHUNKS=$(( (TOTAL + CHUNK_SIZE - 1) / CHUNK_SIZE ))

for ((i=0; i<CHUNKS; i++)); do
  START=$((i * CHUNK_SIZE))
  OUTFILE=$(printf "$OUTDIR/savepoint_chunk_%02d.json" $((i + 1)))
  jq ".[$START:$START+$CHUNK_SIZE]" "$INPUT" > "$OUTFILE"
  echo "Created $OUTFILE"
done

echo "✅ Split $TOTAL conversations into $CHUNKS chunks in '$OUTDIR'"
