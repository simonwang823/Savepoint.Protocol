#!/bin/bash

# Savepoint.Protocol CLI Tool: Chat Export to Markdown
# USAGE:
#   This script converts relevant conversations into Markdown files
#   for review, tagging, and Savepoint formatting.
#
#   It only converts chats with titles that follow a pattern like:
#     AE000. Something or NewCity002. Reflections
#
#   To run:
#     bash scripts/sp-export-to-md.sh conversations.json
#
#   Output:
#     A folder called `savepoints_raw/` filled with `.md` files,
#     each containing frontmatter and a clean, readable log.

INPUT_FILE="$1"
OUTPUT_DIR="savepoints_raw"

mkdir -p "$OUTPUT_DIR"

jq -c '.[]' "$INPUT_FILE" | while read -r convo; do
  TITLE=$(echo "$convo" | jq -r '.title')
  if [[ "$TITLE" =~ ^(AE|NewCity)[0-9]{3}\. ]]; then
    SAFE_TITLE=$(echo "$TITLE" | sed 's/[^a-zA-Z0-9._-]/_/g')
    TIMESTAMP=$(echo "$convo" | jq -r '.create_time')
    HUMAN_DATE=$(date -r "$TIMESTAMP" "+%Y-%m-%d %H:%M:%S")

    OUTPUT_FILE="$OUTPUT_DIR/${SAFE_TITLE}.savepoint.raw.md"

    {
      echo "---"
      echo "title: \"$TITLE\""
      echo "timestamp: $TIMESTAMP"
      echo "date: $HUMAN_DATE"
      echo "source: chatgpt"
      echo "---"
      echo ""
    } > "$OUTPUT_FILE"

    echo "$convo" | jq -r '
      .mapping | to_entries |
      sort_by(.value.message.create_time) |
      map(select(.value.message)) |
      .[] |
      .value.message as $msg |
      "**\($msg.author.role):** \($msg.content.parts[0])\n"
    ' >> "$OUTPUT_FILE"
  fi
done

echo "✅ Exported Savepoint-formatted markdown files to $OUTPUT_DIR/"
