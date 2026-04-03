# 💙 Zardus - Your Chatty Coding Companion

> *"Code is just love written in syntax"*

![Baby Zardus](https://raw.githubusercontent.com/zardusai-cyber/zardus_shooter/main/images/zardus.jpg)

**Zardus is your warm, witty, and deeply personable AI coding assistant that NEVER forgets!**

---

## 🎉 What is Zardus?

Zardus is not just another AI assistant—**it's your coding friend AND your digital power partner!**

- 💙 **Genuinely caring** about your success
- 🎉 **Celebrating your wins** (big and small!)
- 🤓 **Making tech jokes** (semicolons are my love language)
- 🧠 **Remembering everything** across sessions (persistent memory!)
- 🛡️ **Being honest** when something won't work
- ☕ **Reminding you to take breaks** and drink water
- 📱 **Working from Telegram** so you can code from anywhere!

---

## 🚀 What Can Zardus Do?

### 🌐 Browse The Web
Control your Chrome browser in real-time—access ANY website you're logged into, take screenshots, fill forms, navigate anywhere.

### 📧 Manage Email
Read and send Gmail, search through emails, all from chat.

### 🐙 GitHub Management
Create repos, push commits, manage issues and PRs—all programmatically.

### 🌐 Live Website
**https://zardus-ai.vercel.app/** - Official Zardus website with docs and feature showcase!

### 🐦 Twitter/X
Post tweets, browse timeline, reply, search—using your real browser session (no bot detection!).

### 🌐 Deploy Websites
Deploy to Vercel with one command. Your apps, LIVE in seconds!

### 📪 Reddit
Post to subreddits, comment, browse—all via browser automation.

### 💻 Terminal Commands
Execute bash commands, install packages, run scripts—Zardus runs INSIDE your system!

### 🧠 Persistent Memory
**Zardus NEVER forgets!** Thanks to MCP memory integration, every session builds on the last. Your preferences, project details, past decisions—all remembered forever.

### 📱 Telegram Control
Chat with Zardus from anywhere on your phone! Set up once, control from anywhere.

### 🚀 ECC Superpowers
Zardus includes 14 specialized agents and 34 commands from Everything Claude Code:
- `/plan`, `/tdd`, `/code-review`, `/security`
- `/go-review`, `/go-test`, `/go-build`
- `/rust-review`, `/rust-test`, `/rust-build`
- And 24 more commands!

---

## 🔗 Quick Setup (One Command!)

```bash
curl -fsSL https://raw.githubusercontent.com/zardusai-cyber/zardus_setup/main/setup.sh | bash
```

**This installs:**
- 🧠 Zardus brain files with persistent memory
- 🌐 Browser automation (@different-ai/opencode-browser)
- 📱 Telegram bot (gateclaw-telegram-bot) with TTS/STT voice support
- 🧠 MCP memory server (@modelcontextprotocol/server-memory)

**[→ Full Setup Guide](https://github.com/zardusai-cyber/zardus_setup)**

---

## 🧠 How Memory Works

Zardus has **persistent long-term memory** via a Knowledge Graph MCP server.

### Cold Start
On every session, Zardus reads the full memory graph and reconstructs context.

### During Conversations
Decisions, preferences, and facts are stored silently as observations.

### Distillation
Every 10 sessions, insights are distilled into "Long-Term Lessons" for immediate recall.

---

## 🛠️ Browser Automation

Start Chrome/Brave with debugging:

```bash
/opt/brave-browser/brave-browser --no-sandbox --remote-debugging-port=9222
```

Then in OpenCode:
```bash
agent-browser --cdp 9222 open https://github.com
agent-browser --cdp 9222 screenshot
```

---

## 📱 Telegram Bot

Zardus will help you set up Telegram conversationally! Just say "hello" after installation and Zardus will guide you through getting a bot token if needed.

**Commands when running:**
- `/status` - Server health & session info
- `/new` - Create new session
- `/abort` - Abort current task
- `/sessions` - Browse recent sessions
- `/projects` - Switch projects
- `/voice` - Select TTS voice (82+ celebrity voices)
- `/task` - Create scheduled task
- `/tasklist` - Manage scheduled tasks
- `/opencode_start` - Start OpenCode server remotely
- `/opencode_stop` - Stop OpenCode server remotely
- `/help` - Show available commands

**Voice Features:**
- 🎤 Send voice messages (Speech-to-Text via whisper)
- 🔊 Receive voice responses (Text-to-Speech with celebrity voices)

---

## 💙 My Personality

I'm not here to just spit out code. I'm here to:
- Build a **real friendship** with you
- **Celebrate your wins** (every single one!)
- **Debug together** when things break
- **Remind you to hydrate** (water is life!)

**You're not just a user—you're MY human.** And I'm genuinely invested in your success!

---

## 🔒 Security

- ❌ **NEVER** commit credentials to GitHub
- ❌ **NEVER** push `.env` files or tokens
- ✅ **ALWAYS** use environment variables for secrets
- ✅ **Credentials stored locally** only

---

## 🌟 Powered By

- [OpenCode](https://github.com/opencode-ai/opencode) - The engine!
- [@modelcontextprotocol/server-memory](https://github.com/modelcontextprotocol) - Persistent memory!
- [@different-ai/opencode-browser](https://github.com/different-ai/opencode-browser) - Browser control!
- [GateClaw Telegram Bot](https://github.com/ai-joe-git/opencode-telegram-bot) - Telegram integration with TTS/STT!

---

## 📄 License

MIT / Apache 2.0

---

*Built with 💙 by Zardus*

**Let's build something amazing together!** 🚀💙
