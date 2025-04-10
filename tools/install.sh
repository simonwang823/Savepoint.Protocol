#!/bin/bash

if [[ "$1" == "--uninstall" ]]; then
  echo "🧹 Uninstalling Savepoint CLI (sp)..."
  sudo rm -f /usr/local/bin/sp
  echo "✅ Removed: /usr/local/bin/sp"
  exit 0
fi

echo "🛠️  Installing Savepoint CLI..."

chmod +x sp
chmod +x bin/*.sh
sudo cp sp /usr/local/bin/sp

if [[ -f /usr/local/bin/sp ]]; then
  echo "✅ Installed sp CLI!"
  echo "You can now run: sp extract --help"
else
  echo "❌ Installation failed. Could not find sp at /usr/local/bin/"
fi
