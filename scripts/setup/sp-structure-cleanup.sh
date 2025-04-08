#!/bin/bash

# Savepoint.Protocol Toolchain Refactor Script
# Normalizes scripts/ directory into proper subgroups
# Author: Peter Salvato, 2025

echo "📦 Reorganizing Savepoint toolchain…"

mkdir -p scripts/core scripts/setup scripts/dev

# Move official CLI tools to core/
mv scripts/core/sp-export-to-md.sh scripts/core/ 2>/dev/null
mv scripts/core/sp-keeper-extract.sh scripts/core/ 2>/dev/null
mv scripts/core/sp-split-json-chunks.sh scripts/core/ 2>/dev/null

# Move setup tools
mv scripts/core/sp-bootstrap.sh scripts/setup/ 2>/dev/null
mv scripts/core/sp-install-cli-tools.sh scripts/setup/ 2>/dev/null

# Move utility/legacy/dev scripts
mv scripts/cep.sh scripts/dev/ 2>/dev/null
mv scripts/json-to-markdown.sh scripts/dev/ 2>/dev/null
mv scripts/savepoint.sh scripts/dev/ 2>/dev/null
mv scripts/split_conversations.sh scripts/dev/ 2>/dev/null

# Remove now-empty scripts/core if needed
rmdir scripts/core 2>/dev/null || true

echo "✅ Toolchain reorganized:"
echo "  → scripts/core/ (canonical tools)"
echo "  → scripts/setup/ (scaffold + installers)"
echo "  → scripts/dev/ (utility + legacy)"
