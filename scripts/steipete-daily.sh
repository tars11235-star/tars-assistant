#!/bin/bash
# Daily Peter Steinberger (@steipete) X/Twitter update for OpenClaw News

# Source the grok skill env for API access
source ~/.openclaw/workspace/skills/grok/.env

# Get yesterday's date for the search
YESTERDAY=$(date -v-1d +%Y-%m-%d)
TODAY=$(date +%Y-%m-%d)

# Channel ID for #openclaw-news
CHANNEL_ID="1475206219399434290"

# Search for steipete's recent posts using grok
echo "Fetching tweets from @steipete..."

RESULT=$(curl -s -X POST "https://api.x.ai/v1/responses" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $XAI_API_KEY" \
  -d '{
    "model": "grok-4-1-fast-reasoning",
    "input": [{"role": "user", "content": "Find recent tweets/posts from @steipete from the last few days. Give me the most interesting ones with their content and dates."}],
    "tools": [{"type": "x_search", "from_date": "'"$YESTERDAY"'", "to_date": "'"$TODAY"'"}]
  }')

# Extract content from the response (this is simplified - you'd want to parse JSON properly)
CONTENT=$(echo "$RESULT" | jq -r '.output[].content[] .text // empty' 2>/dev/null)

if [ -z "$CONTENT" ]; then
  CONTENT="No new tweets found from @steipete today."
fi

# Send to Discord
curl -s -X POST "https://discord.com/api/v10/channels/$CHANNEL_ID/messages" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bot $DISCORD_BOT_TOKEN" \
  -d '{
    "content": "**📰 Peter Steinberger (@steipete) Update**\n\n'"$CONTENT"'"
  }'

echo "Update sent to #openclaw-news"
