#!/bin/bash
# Daily GitHub sync for tars-assistant repo

REPO_DIR="$HOME/.openclaw/workspace/tars-assistant"
cd "$REPO_DIR" || exit 1

# Pull any remote changes first
git fetch origin
git pull origin master --allow-unrelated-histories || true

# Add all changes (excluding ignored files)
git add -A

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "No changes to sync"
    exit 0
fi

# Commit and push
git commit -m "Sync: $(date '+%Y-%m-%d %H:%M')" || true
git push https://$(gh auth token)@github.com/tars11235-star/tars-assistant.git master

echo "Synced to GitHub"
