# Savepoint Protocol CLI

Modular command-line tools for structured reflection, archiving, and timeline tracking from ChatGPT exports.

---

## 🚀 Install (from local clone)

```bash
cd tools
bash install.sh

🔧 Usage

sp extract --prefix AE --label Review1 --source ./conversations.json

Flags:

    --prefix → Title prefix to match (optional)

    --label → Export label (required)

    --source → Path to conversations.json (defaults to current directory)

If flags are missing, the tool will prompt you.
📂 Output

The tool will create a folder like:

AE.Review1.extraction.041425.1151am/
├── AE.Review1.extraction.041425.1151am.sessions.md
├── AE.Review1.extraction.041425.1151am.flatlog.csv
├── AE.Review1.extraction.041425.1151am.raw.json
└── AE.Review1.extraction.041425.1151am.meta.txt

🛠️ Subcommands (WIP)
Command	Description
sp extract	Extract and structure conversations
sp drop	Manually drop Savepoints (coming soon)
sp install	Install or manage components (WIP)
🔧 Placeholder Scripts
tools/bin/sp_drop.sh

#!/bin/bash
echo "⚠️  sp drop is not yet implemented."
exit 0

tools/bin/sp_install.sh

#!/bin/bash
echo "⚙️  sp install (component installer placeholder)"
exit 0

📦 License
#! put license here.