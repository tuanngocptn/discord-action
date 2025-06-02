# Discord Action

## GitHub Action for sending a Discord Telegram notification message.

## Usage

## Environment variable

Set environment variable in secrets of your repository as below:
| Environment variable | Description | Example |
|--------------------------|-----------------------------------------------------|-----------------------|
| DISCORD_WEBHOOK_URL | Discord webhook URL for sending messages to a channel. You can get this by going to Server Settings > Integrations > Webhooks | https://discordapp.com/api/webhooks/xxxx/yyyy |

Send custom message:

```yml
name: telegram message

on: [push]

env:
  DISCORD_WEBHOOK_URL: ${{ secrets.DISCORD_WEBHOOK_URL }}

jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
      - name: Send custom message
        uses: tuanngocptn/discord-action@main
        with:
          message: Test telegram action
```
