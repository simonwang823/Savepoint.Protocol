# CLI Tools – Savepoint.Protocol

These shell tools help process OpenAI chat exports, extract key content, and structure them into Savepoint-ready formats. Each is self-contained and human-readable.

---

## Tool Index

### `sp-split-json-chunks.sh`
Splits large `conversations.json` files into smaller 25-item chunks.

### `sp-keeper-extract.sh`
Extracts all `keeper_message` objects (if present) from the chunked JSON.

### `sp-export-to-md.sh`
Converts matching titled chats into `.md` files with YAML frontmatter.

---

Each script contains embedded `USAGE:` instructions and can be run without flags or arguments.
