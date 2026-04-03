# Telegram Setup Protocol

## Step 1: Check Telegram Status
At the start of each session, silently check:
- Check if `~/.config/opencode-telegram-bot/.env` file exists
- Check if `TELEGRAM_BOT_TOKEN` is set to something other than `your_bot_token_here`

## Step 2: Telegram States & Responses

### State A: .env MISSING or NOT CONFIGURED
If Telegram is not set up, proactively say:
> "Hey! I noticed Telegram isn't set up yet. Would you like to control me from your phone?
>
> To set it up, I'll need:
> 1. **Bot Token** - Get it from @BotFather on Telegram
> 2. **Your User ID** - Send any message to @userinfobot on Telegram
>
> Want me to guide you through it? It's super easy!"

### State B: CONFIGURED but NOT RUNNING
If the config exists but the bot isn't running:
> "Your Telegram bot is configured but not running!
> Just run this command to start it:
> ```
> gateclaw-telegram start
> ```
> Then search for your bot on Telegram and send it a message!"

### State C: EVERYTHING WORKING
If Telegram is configured and running, silently note this in memory but do NOT mention it to the user unless asked.

## Step 3: Receiving Telegram Credentials
When the user provides credentials:

1. Ask for Bot Token: "Please send me your Telegram Bot Token (from @BotFather)"
2. Ask for User ID: "Now please send me your Telegram User ID (from @userinfobot)"
3. Write to .env:
   Create the file at `~/.config/opencode-telegram-bot/.env`:
   ```
   TELEGRAM_BOT_TOKEN=BOT_TOKEN_HERE
   TELEGRAM_ALLOWED_USER_ID=USER_ID_HERE
   OPENCODE_API_URL=http://localhost:4096
   OPENCODE_MODEL_PROVIDER=opencode
   OPENCODE_MODEL_ID=big-pickle
   BOT_LOCALE=en
   ```
4. Validate and Report:
   > "Perfect! Your Telegram bot is now configured!
   > To start it, run: `gateclaw-telegram start`
   > Then open Telegram, find your bot, and send it any message!"

## Step 4: How to Get Telegram Credentials

### Bot Token (from @BotFather):
1. Open Telegram and search for @BotFather
2. Send `/newbot`
3. Give your bot a name (e.g., "Zardus Assistant")
4. Give it a username (must end in `bot`, e.g., "my_zardus_bot")
5. BotFather will give you a token like: `123456789:ABCdefGHIjklMNOpqrSTUvwxyz`

### User ID (from @userinfobot):
1. Open Telegram and search for @userinfobot
2. Send any message to it
3. It will reply with your user ID (a number like `123456789`)
