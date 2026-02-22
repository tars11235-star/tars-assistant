#!/bin/bash

# OpenClaw daily update script
# Runs daily at 5am, posts to #updates channel if update applied

CHANNEL_ID="1474077658152173570"
LOG_FILE="/tmp/openclaw-update.log"

# Get current version before update
BEFORE_VERSION=$(openclaw --version 2>/dev/null | grep -oP '^\d+\.\d+\.\d+' || echo "unknown")

# Run update (non-interactive, with JSON output for parsing)
echo "=== Update run at $(date) ===" >> "$LOG_FILE"
openclaw update --yes --json 2>&1 | tee -a "$LOG_FILE"

# Get version after update
AFTER_VERSION=$(openclaw --version 2>/dev/null | grep -oP '^\d+\.\d+\.\d+' || echo "unknown")

# Check if update was applied
if [ "$BEFORE_VERSION" != "$AFTER_VERSION" ]; then
    echo "UPDATE APPLIED: $BEFORE_VERSION -> $AFTER_VERSION" >> "$LOG_FILE"
    
    # Fetch changelog highlights
    CHANGELOG_URL="https://raw.githubusercontent.com/openclaw/openclaw/main/CHANGELOG.md"
    HIGHLIGHTS=$(curl -s "$CHANGELOG_URL" 2>/dev/null | sed -n "/## \[$AFTER_VERSION\]/,/## /p" | head -30)
    
    # Format message
    MESSAGE="**🦞 OpenClaw Updated!**\n\nUpdated from \`$BEFORE_VERSION\` to \`$AFTER_VERSION\`\n\n**What's New:**\n$HIGHLIGHTS"
    
    # Send to channel
    openclaw message send --channel discord --target "$CHANNEL_ID" --message "$MESSAGE" 2>>"$LOG_FILE"
else
    echo "No update available at $(date)" >> "$LOG_FILE"
fi
