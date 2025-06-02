send_message() {
  curl --location --request POST "$DISCORD_WEBHOOK_URL" \
    --header 'Content-Type: application/json' \
    --data '{
      "content": "'"$1"'"
  }'
}
health_check() {
  echo "Discord Action is Ok"
}

config_github_token() {
  REMOTE_REPO="https://${GITHUB_ACTOR}:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
  git remote add publisher $REMOTE_REPO
  git config user.name "GitHub Actions"
  git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
}

