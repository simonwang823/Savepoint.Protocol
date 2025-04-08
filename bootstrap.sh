#!/bin/bash

echo "Savepoint Protocol v3.0 Bootstrap Initiated..."

# Root Directory
echo "Creating root directories..."
mkdir -p savepoint-protocol/.savepoints/.index \
         savepoint-protocol/docs/setup-guides \
         savepoint-protocol/docs/environment-setup \
         savepoint-protocol/scripts \
         savepoint-protocol/.schema \
         savepoint-protocol/environments/{shell,editors,ai,mobile} \
         savepoint-protocol/printables/{2d,3d} \
         savepoint-protocol/.planning \
         savepoint-protocol/usb-kit/{portable-terminal,editors}
echo "Directories created."

cd savepoint-protocol

# Root Files
echo "Touching root files (README, LICENSE, VERSION)..."
touch README.md LICENSE.md VERSION
echo "3.0" > VERSION
echo "Root files touched."

# Savepoints
echo "Setting up Savepoint tracking..."
touch .savepoints/bootstrap.savepoint .savepoints/.index/index.csv
echo "Savepoint tracking initialized."

# Docs
echo "Creating documentation files..."
touch docs/instructions.chatgpt.md docs/savepoint-syntax.md docs/protocol-manifest.md \
      docs/version-history.md docs/savepoint-prompts.md docs/suggested-tools.md docs/examples.md \
      docs/philosophy.md docs/quickstart.md docs/governance.md docs/contributors.md
echo "Documentation files created."

# Setup Guides
echo "Setting up guides for various usage tiers..."
touch docs/setup-guides/{setup-guide-index.md,analog.md,solo-digital.md,creative-team.md,research-group.md,narrative-play.md}
echo "Setup guides created."

# Environment Setup Docs
echo "Creating platform-specific environment setup docs..."
touch docs/environment-setup/{platform-index.md,android.md,raspberry-pi.md,windows.md,mac.md,ios.md,cloud.md,thumbdrive.md}
echo "Environment setup docs created."

# Scripts (Pure Bash Only)
echo "Creating script placeholders (Pure Bash only)..."
touch scripts/{cep.sh,split_conversations.sh,json-to-markdown.sh,savepoint.sh,sp-bootstrap.sh}
chmod +x scripts/*.sh
echo "Scripts created and set executable."

# Schema
echo "Setting up schema validation files..."
touch .schema/savepoint-schema.json .schema/repo-map.yaml
echo "Schema validation setup complete."

# Environments
echo "Creating environment support files..."
touch environments/env-readme.md \
      environments/shell/{bashrc.addon,savepoint-cli.aliases} \
      environments/editors/{obsidian-snippets.md,savepoint-dark-theme.json} \
      environments/ai/{notebooklm-import-guide.md,chatgpt-setup-instructions.md} \
      environments/mobile/termux-setup.sh
echo "Environment support files created."

# Printables
echo "Setting up printable artifacts..."
touch printables/printables-readme.md \
      printables/2d/{savepoint-reference-card.pdf,savepoint-index-cards.pdf,savepoint-handwriting-sheet.pdf,savepoint-stencil-card.svg} \
      printables/3d/{savepoint-stamp.stl,savepoint-token.stl,savepoint-stencil.stl,savepoint-ruler.stl}
echo "Printables setup complete."

# USB Kit
echo "Configuring USB portable setup..."
touch usb-kit/{run.bat,run.sh}
echo "USB portable setup configured."

# Internal Planning
echo "Setting up internal planning and reflection space..."
touch .planning/{roadmap.md,v3.1-plan.md,current-state.md,backlog.md,tooling-todo.md,ux-notes.md,questions.md,naming-conventions.md}
echo "Internal planning documents created."

echo "Savepoint Protocol v3.0 Bootstrap completed successfully!"
