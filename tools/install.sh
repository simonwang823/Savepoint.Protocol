# Savepoint Protocol CLI
# Author: Peter Salvato
# License: MIT
# (c) 2025 Peter Salvato. All rights reserved.

#!/bin/bash

if [[ "$1" == "--uninstall" ]]; then
  echo "🧹 Uninstalling Savepoint CLI (sp)..."
  sudo rm -f /usr/local/bin/sp
  echo "✅ Removed: /usr/local/bin/sp"
  exit 0
fi

echo "🛠️  Installing Savepoint CLI using symlink..."

chmod +x sp
chmod +x bin/*.sh

# Remove existing copy if any
sudo rm -f /usr/local/bin/sp

# Link the repo's sp to /usr/local/bin
sudo ln -s "$(pwd)/sp" /usr/local/bin/sp

if command -v sp &> /dev/null; then
  echo "✅ Installed sp CLI (symlinked)"
  echo "You can now run: sp extract --help"
else
  echo "❌ sp not found in PATH after install"
fi
