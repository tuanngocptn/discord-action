send_message() {
  curl --location --request POST "$DISCORD_WEBHOOK_URL" \
    --header 'Content-Type: application/json' \
    --data '{
      "content": "'"$1"'"
  }'
}
