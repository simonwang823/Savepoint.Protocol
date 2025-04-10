# Savepoint Protocol CLI
# Author: Peter Salvato
# License: MIT
# (c) 2025 Peter Salvato. All rights reserved.

#!/bin/bash

REPO_URL="https://github.com/peterSalvato/Savepoint.Protocol.git"
TARGET="/usr/local/bin/sp"

# If run outside repo, clone it into a temp dir
if [[ ! -f "sp" || ! -d "bin" ]]; then
  echo "📦 Cloning Savepoint.Protocol CLI tools..."
  TMPDIR=$(mktemp -d)
  git clone "$REPO_URL" "$TMPDIR"
  cd "$TMPDIR/tools" || exit 1
fi

echo "🛠️  Installing Savepoint CLI using symlink..."

chmod +x sp
chmod +x bin/*.sh

# Remove old link
sudo rm -f "$TARGET"
sudo ln -s "$(pwd)/sp" "$TARGET"

# Confirm success
if command -v sp &> /dev/null; then
  echo "✅ Installed sp CLI!"
  echo "You can now run: sp extract --help"
else
  echo "❌ Installation failed. Check path or permissions."
fi
