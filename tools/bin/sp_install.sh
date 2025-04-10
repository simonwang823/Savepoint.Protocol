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

echo "⚙️  sp install (component installer placeholder)"
exit 0
