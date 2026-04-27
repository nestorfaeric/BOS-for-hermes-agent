#!/usr/bin/env bash
set -euo pipefail

PROFILE_NAME="${1:-bos}"
HERMES_BIN="${HERMES_BIN:-hermes}"

if ! command -v "$HERMES_BIN" >/dev/null 2>&1; then
  if [ -x "$HOME/.local/bin/hermes" ]; then
    HERMES_BIN="$HOME/.local/bin/hermes"
  else
    echo "Hermes CLI not found. Set HERMES_BIN=/path/to/hermes" >&2
    exit 1
  fi
fi

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$REPO_DIR/hermes-profile-template"
PROFILE_DIR="$HOME/.hermes/profiles/$PROFILE_NAME"

if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "Template directory not found: $TEMPLATE_DIR" >&2
  exit 1
fi

if [ ! -d "$PROFILE_DIR" ]; then
  "$HERMES_BIN" profile create "$PROFILE_NAME"
fi

BACKUP_DIR="$PROFILE_DIR.backup.$(date +%Y%m%d-%H%M%S)"
if [ -e "$PROFILE_DIR/SOUL.md" ] || [ -e "$PROFILE_DIR/skills/business-operating-system" ]; then
  mkdir -p "$BACKUP_DIR"
  [ -e "$PROFILE_DIR/SOUL.md" ] && cp "$PROFILE_DIR/SOUL.md" "$BACKUP_DIR/SOUL.md"
  [ -e "$PROFILE_DIR/skills/business-operating-system" ] && mkdir -p "$BACKUP_DIR/skills" && cp -R "$PROFILE_DIR/skills/business-operating-system" "$BACKUP_DIR/skills/"
  echo "Existing BOS files backed up to: $BACKUP_DIR"
fi

cp -R "$TEMPLATE_DIR/"* "$PROFILE_DIR/"
if [ ! -f "$PROFILE_DIR/config.yaml" ] && [ -f "$PROFILE_DIR/config.yaml.sample" ]; then
  cp "$PROFILE_DIR/config.yaml.sample" "$PROFILE_DIR/config.yaml"
fi
chmod -R u+rwX,go-rwx "$PROFILE_DIR"

echo "BOS Hermes profile installed: $PROFILE_NAME"
echo "Start it with: $HERMES_BIN --profile $PROFILE_NAME chat"
