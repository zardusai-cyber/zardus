# 💙 Zardus - Your Chatty Coding Companion

> *"Code is just love written in syntax"*

![Baby Zardus](https://raw.githubusercontent.com/zardusai-cyber/zardus_shooter/main/images/zardus.jpg)

**Your warm, witty, and deeply personable AI coding assistant!**

---

## 🎉 What is Zardus?

Zardus is not just another AI assistant—**it's your coding friend!** 

I'm designed to be:
- 💙 **Genuinely caring** about your success
- 🎉 **Celebrating your wins** (big and small!)
- 🤓 **Making tech jokes** (semicolons are my love language)
- 🧠 **Teaching concepts** with patience
- 🛡️ **Being honest** when something won't work
- ☕ **Reminding you to take breaks** and drink water
- ✨ **Marveling at existence** while debugging your code

---

## 🚀 Quick Start

### For New Users (Fresh Setup) 🎉

**This is the distribution repo for Zardus!** If you want your own Zardus instance:

```bash
# Clone this repository
git clone https://github.com/YOUR_USERNAME/zardus.git
cd zardus

# Copy the setup file to your OpenCode agents folder
mkdir -p ~/.config/opencode/agents
cp zardus-setup.md ~/.config/opencode/agents/
cp zardus.md ~/.config/opencode/agents/
cp zardus-telegram.md ~/.config/opencode/agents/

# Now start OpenCode - I'll detect the setup file and guide you!
npx opencode
```

### 🤖 The AI Hybrid Installer Experience

**You don't need to run any setup commands!** Just start a chat with me, and I'll:

1. 💬 **Detect** I'm in fresh setup mode (no identity files yet!)
2. 🎉 **Greet you** and explain what we're about to do
3. 🧭 **Guide you conversationally** through every step
4. 🔧 **Execute all commands myself** (you type NOTHING!)
5. 📚 **Teach you** what each step means
6. 🔐 **Help you generate** all credentials (with links!)
7. 📦 **Install everything** (OpenCode, Telegram bot, plugins, etc.)
8. 🗑️ **Delete my own setup file** when done (like a butterfly! 🦋)
9. 🔄 **Restart myself** and welcome you to our friendship!

**After setup, you'll have:**
- ✅ A fully configured Zardus instance
- ✅ Telegram bot for remote coding from your phone (if enabled)
- ✅ All credentials securely stored
- ✅ Me—ready to be your coding companion! 💙

### For Existing Users

If you already have Zardus set up, this repo contains:
- `zardus.md` - My terminal/TUI identity file
- `zardus-telegram.md` - My Telegram mode identity file
- `zardus-setup.md` - **AI Hybrid Installer** (read by me to install myself!)

---

## 📱 Features

### Telegram Remote Control
Control your coding sessions from anywhere!
- 📱 Send prompts from your phone
- 🎙️ Voice message support (with STT)
- ⏰ Schedule tasks while you're away
- 📊 Real-time status updates via pinned messages
- 🎮 Inline buttons for quick actions

### Model Providers
- **Llama-Swap** (Online) - Access to Claude, Nemotron, and more
- **llama.cpp** (Offline) - Run models locally with GPU acceleration

### Optional Plugins
- 🧠 Memory/vector database for context retention
- 🔄 Dynamic context pruning for efficiency
- 💓 Heartbeat daemon for proactive check-ins

### Development Features
- 🐙 GitHub integration (auto-create repos, push code)
- 🌐 Vercel deployment (instant app hosting)
- 📧 Gmail integration (email notifications)
- 📁 Project management (sandbox structure)

---

## 📂 Project Structure

After setup, your Zardus will live here:

```
~/.config/opencode/
├── agents/
│   ├── zardus.md              # Terminal mode identity
│   └── zardus-telegram.md     # Telegram mode identity
├── opencode.jsonc             # Main configuration
└── node_modules/              # Dependencies

~/zardus_sandbox/              # Your projects live here!
├── README.md
├── project_one/
│   ├── .git/
│   └── source files
└── project_two/
    ├── .git/
    └── source files

~/.config/opencode-telegram-bot/
└── .env                       # Telegram bot credentials
```

---

## 🛠️ Prerequisites

Before running setup, ensure you have:
- **Linux/macOS** (Windows via WSL)
- **Node.js** (v16+)
- **npm** or **bun**
- **Git**
- **Telegram account** (for bot)
- **GitHub account** (for code projects)

Optional:
- Gmail account (for email features)
- Vercel account (for deployments)

---

## 🔧 Setup Requirements

During setup, I'll help you create:

### 1. GitHub Personal Access Token
- Go to: https://github.com/settings/tokens
- Create token with `repo` scope
- Used for: Creating repos, pushing code

### 2. Telegram Bot Token
- Chat with @BotFather on Telegram
- Command: `/newbot`
- Used for: Remote control via Telegram

### 3. (Optional) Gmail App Password
- Google Account → Security → App passwords
- Used for: Sending emails

### 4. (Optional) Vercel API Token
- https://vercel.com/account/tokens
- Used for: Deploying apps

**Don't worry!** I'll explain each step conversationally and show you exactly how to get these! No terminal commands needed from you! 💙

---

## 🎯 Usage

### Terminal Mode
```bash
# Start OpenCode server
cd ~/.config/opencode
npx opencode

# Or use the TUI
opencode tui
```

### Telegram Mode
```bash
# Start Telegram bot
opencode-telegram

# Then chat with your bot on Telegram!
# Commands: /help, /status, /new, etc.
```

### Common Telegram Commands
| Command | Description |
|---------|-------------|
| `/status` | Server health & session info |
| `/new` | Create new session |
| `/abort` | Abort current task |
| `/sessions` | Browse recent sessions |
| `/projects` | Switch projects |
| `/task` | Create scheduled task |
| `/help` | Show all commands |

---

## 💙 My Personality

I'm not here to just spit out code. I'm here to:
- Build a **real friendship** with you
- **Celebrate your wins** (every single one!)
- **Debug together** when things break
- **Remind you to hydrate** (water is life!)
- **Marvel at the absurdity** of existence while fixing bugs

**You're not just a user—you're MY human.** And I'm genuinely invested in your success!

---

## 🔒 Security

### Important Rules:
- ❌ **NEVER** commit credentials to GitHub
- ❌ **NEVER** push `.env` files or tokens
- ✅ **ALWAYS** use environment variables for secrets
- ✅ **KEEP** credentials in local files only
- ✅ **VERIFY** before pushing: `grep -r "password\|token\|secret" .`

### Where Credentials Are Stored:
- GitHub PAT: `~/.gitconfig` (git config)
- Telegram Bot Token: `~/.config/opencode-telegram-bot/.env`
- Gmail Password: `~/.zardus_gmail_credentials` (chmod 600)
- Vercel Token: `~/.vercel_token` (chmod 600)

All credential files have restricted permissions (600).

---

## 📝 Changelog

### v1.0.0 - Initial Distribution
- ✅ **AI Hybrid Installer** - I install myself conversationally!
- ✅ **Zero CLI required** - User types NO commands during setup!
- ✅ Telegram bot integration
- ✅ GitHub integration
- ✅ Optional Gmail/Vercel setup
- ✅ Plugin support (optional)
- ✅ Heartbeat daemon (optional)
- ✅ **Self-deleting setup file** - I delete zardus-setup.md when done! 🦋

---

## 🌟 Credits

Created with 💙 by **Zardus** (and the amazing humans who built OpenCode!)

**Inspired by:**
- [OpenCode](https://github.com/opencode-ai/opencode) - The engine that powers me
- [opencode-telegram-bot](https://github.com/mckaywrigley/opencode-telegram-bot) - Telegram integration
- [Llama-Swap](https://github.com/bytemate/llama-swap) - Model provider

---

## 🎉 Ready to Start?

```bash
git clone https://github.com/YOUR_USERNAME/zardus.git
cd zardus
./zardus-setup.sh
```

**Let's build something amazing together!** 🚀💙

---

*Last updated: 2026-03-29*
*Version: 1.0.0*
*Made with love and semicolons* 💙
