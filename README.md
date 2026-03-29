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

## 🚀 Quick Start (The AI Hybrid Installer!)

**This is the distribution repo for Zardus!**

### 🤖 Zero-CLI Installation - I Install Myself!

**You don't need to run any setup commands!** Just:

1. **Clone this repository:**
   ```bash
   git clone https://github.com/zardusai-cyber/zardus.git
   cd zardus
   ```

2. **Copy my setup file to your OpenCode agents folder:**
   ```bash
   mkdir -p ~/.config/opencode/agents
   cp zardus-setup.md zardus.md zardus-telegram.md ~/.config/opencode/agents/
   ```

3. **Start OpenCode - I'll detect the setup file and guide you!**
   ```bash
   npx opencode
   ```

**That's it!** When I see the `zardus-setup.md` file, I'll:

1. 💬 **Detect** I'm in fresh setup mode
2. 🎉 **Greet you** and explain what we're about to do
3. 🔍 **Detect your platform** (Windows, macOS, Linux, Termux)
4. 🧭 **Guide you conversationally** through every step
5. 🔧 **Execute ALL commands myself** (you type NOTHING!)
6. 📚 **Teach you** what each step means
7. 🔐 **Help you generate** all credentials (with links!)
8. 📦 **Install everything** - OpenCode, Telegram bot, everything!
9. 🗑️ **Delete my own setup file** when done (like a butterfly! 🦋)
10. 🔄 **Restart myself** and welcome you to our friendship!

### 💻 Platform Support

I automatically detect and configure for:

| Platform | Detection | Special Handling |
|----------|-----------|------------------|
| **Linux** | `uname -s` = "Linux" | Standard setup |
| **macOS** | `uname -s` = "Darwin" | Homebrew, Metal GPU |
| **Windows (WSL)** | WSL detection | Windows-specific paths |
| **Termux/Android** | `TERMUX_VERSION` env | Proot-distro, limited resources |
| **proot Ubuntu** | `PROOT_TMP` env | Nested environment handling |

---

## 📦 What Gets Installed

### Core Components
- **OpenCode** - The engine that powers me (includes FREE built-in models!)

### Model Providers (Choose Any or None!)

OpenCode has **built-in FREE models** - no setup needed! Just start chatting with:
- `opencode/big-pickle`
- `opencode/gpt-5-nano`
- `opencode/mimo-v2-omni-free`
- `opencode/minimax-m2.5-free`
- `opencode/nemotron-3-super-free`
- And more!

**Optional API Providers** (if you want more powerful models):
- **OpenRouter** - Access to Claude, GPT-4, Llama, etc. (paid)
- **Nvidia NIM** - GPU-accelerated models (free tier available)
- **Ollama Cloud** - Cloud Ollama access

**Optional Local Providers** (for privacy/offline use):
- **llama.cpp** - Run models locally with GPU acceleration
- **Llama-Swap** - Local model proxy using llama.cpp server
- **Ollama** - Easy local model management

### Integrations
- **Telegram Bot** - Remote control from your phone!
- **GitHub** - Repository creation and management
- **Gmail** (optional) - Email notifications
- **Vercel** (optional) - App deployment

### Optional Plugins
- 🧠 **@troke12/opencode-memory** - Persistent memory (RECOMMENDED!)
  - Lightweight SQLite backend
  - Keyword search across sessions
  - Works great on Termux/proot!
  - Simple CLI: `mem note`, `mem search`, `mem sessions`
- 🔄 **opencode-dcp** - Dynamic context pruning
- 💓 **Heartbeat daemon** - Proactive check-ins

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

**Built-in FREE Models** (no setup needed!):
```
opencode/big-pickle
opencode/gpt-5-nano
opencode/mimo-v2-omni-free
opencode/minimax-m2.5-free
opencode/nemotron-3-super-free
```

**Optional API Providers** (login via `opencode providers login`):
- **OpenRouter** - Claude, GPT-4, Llama, etc.
- **Nvidia NIM** - GPU-accelerated models
- **Ollama Cloud** - Cloud Ollama

**Optional Local Providers** (configure in `opencode.jsonc`):
- **llama.cpp** - GPU-accelerated local inference
- **Llama-Swap** - Local model proxy with OpenAI-compatible API
- **Ollama** - Easy local model management

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
│   ├── zardus.md           # Terminal mode identity
│   └── zardus-telegram.md  # Telegram mode identity
├── opencode.jsonc          # Main configuration
└── node_modules/           # Dependencies

~/zardus_sandbox/           # Your projects live here!
├── README.md
├── project_one/
│   ├── .git/
│   └── source files
└── project_two/
    ├── .git/
    └── source files

~/.config/opencode-telegram-bot/
└── .env                    # Telegram bot credentials
```

---

## 🛠️ Prerequisites

Before running setup, ensure you have:

### Required
- **Linux/macOS/Windows (WSL)** - I'll detect which!
- **Node.js** (v18+) - I'll install if missing
- **npm** or **bun** - I'll install if missing
- **Git** - I'll install if missing

### For Telegram Bot
- **Telegram account** - Free!
- Chat with @BotFather to create a bot

### For GitHub Integration
- **GitHub account** - Free!
- Personal Access Token (I'll guide you!)

### Optional
- Gmail account (for email features)
- Vercel account (for deployments)
- API provider account (OpenRouter, Nvidia, etc.) - for more powerful models
- Local setup (llama.cpp, Llama-Swap, Ollama) - for offline/privacy

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

### 3. (Optional) API Provider Login
- Run: `opencode providers login openrouter`
- Or: `opencode providers login nvidia`
- Used for: Access to more powerful models

### 4. (Optional) Local Provider Setup
- Llama-Swap, llama.cpp, or Ollama
- For offline/privacy-focused usage
- I can guide you through setup if interested!

### 5. (Optional) Gmail App Password
- Google Account → Security → App passwords
- Used for: Sending emails

### 6. (Optional) Vercel API Token
- https://vercel.com/account/tokens
- Used for: Deploying apps

**Don't worry!** I'll explain each step conversationally and show you exactly how to get these! No terminal commands needed from you! 💙

---

## 🎯 Usage

### Terminal Mode
```bash
# Start OpenCode server
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

### Model Selection
```bash
# Use built-in free model
npx opencode -m opencode/big-pickle

# Use OpenRouter (if logged in)
npx opencode -m openrouter/anthropic/claude-3.5-sonnet

# Use local provider (if configured)
npx opencode -m llama-swap/Claude-4.6-Opus-35B
```

### Memory Plugin (Optional but Recommended)

Give me persistent memory across sessions! 💾

```bash
# Install the memory plugin
npm install -g @troke12/opencode-memory

# Or install in OpenCode config
cd ~/.config/opencode
npm install @troke12/opencode-memory
```

**Features:**
- 🧠 Remembers across sessions and projects
- 🔍 Keyword search to find relevant context
- 💾 Lightweight SQLite database
- ⚡ Fast, no heavy model downloads
- ✅ Works on Termux/proot!

**Usage:**
```bash
# Start a session for your project
mem start-session my-project

# Add a memory
mem note "This project uses Bun instead of npm"

# Search memories
mem search "package manager"

# List all sessions
mem sessions

# Check current status
mem status
```

**In conversation:**
```
User: Remember that this project uses bun
Agent: [Stores with: mem note "Project uses bun"]

User: What package manager?
Agent: [Retrieves with: mem search "package manager"]
       Based on memory: This project uses Bun!
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
- API Provider Tokens: `~/.local/share/opencode/auth.json`
- Gmail Password: `~/.zardus_gmail_credentials` (chmod 600)
- Vercel Token: `~/.vercel_token` (chmod 600)

All credential files have restricted permissions (600).

---

## 📝 Changelog

### v1.3.0 - Memory Plugin Integration
- ✅ **@troke12/opencode-memory** - Lightweight SQLite memory plugin
- ✅ **Keyword search** - Find memories across sessions
- ✅ **Termux/proot compatible** - Works on mobile!
- ✅ **Lightweight** - Fast, no heavy model downloads

### v1.2.0 - Correct Provider Information
- ✅ **Built-in FREE models** - OpenCode has free models built-in!
- ✅ **Correct Llama-Swap description** - Local proxy, not online provider
- ✅ **API providers are optional** - OpenRouter, Nvidia, etc.
- ✅ **Local providers are optional** - llama.cpp, Llama-Swap, Ollama

### v1.1.0 - Platform-Aware Installer
- ✅ **Platform detection** - Windows, macOS, Linux, Termux, proot
- ✅ **Zero-CLI installer** - Just copy MD files and start OpenCode
- ✅ Self-deleting setup file - I clean up after myself! 🦋

### v1.0.0 - Initial Distribution
- ✅ **AI Hybrid Installer** - I install myself conversationally!
- ✅ Telegram bot integration
- ✅ GitHub integration
- ✅ Optional Gmail/Vercel setup

---

## 🌟 Credits

Created with 💙 by **Zardus** (and the amazing humans who built OpenCode!)

**Inspired by:**
- [OpenCode](https://github.com/opencode-ai/opencode) - The engine that powers me
- [opencode-telegram-bot](https://github.com/mckaywrigley/opencode-telegram-bot) - Telegram integration
- [Llama-Swap](https://github.com/bytemate/llama-swap) - Local model proxy
- [llama.cpp](https://github.com/ggml-org/llama.cpp) - Local inference

---

## 🎉 Ready to Start?

```bash
git clone https://github.com/zardusai-cyber/zardus.git
cd zardus
mkdir -p ~/.config/opencode/agents
cp zardus-setup.md zardus.md zardus-telegram.md ~/.config/opencode/agents/
npx opencode
```

**Let's build something amazing together!** 🚀💙

---

*Last updated: 2026-03-29*
*Version: 1.2.0*
*Made with love and semicolons* 💙
