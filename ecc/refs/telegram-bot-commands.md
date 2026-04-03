# Telegram Bot Commands Reference

## Bot Commands
| Command | Description |
|---------|-------------|
| `/status` | Server health, project, session, model info |
| `/new` | Create new session |
| `/abort` | Abort current task |
| `/sessions` | Browse recent sessions |
| `/projects` | Switch projects |
| `/voice` | Select TTS voice (82+ celebrity voices) |
| `/task` | Create scheduled task |
| `/tasklist` | Manage scheduled tasks |
| `/opencode_start` | Start OpenCode server remotely |
| `/opencode_stop` | Stop OpenCode server remotely |
| `/help` | Show available commands |

## Features
- Remote coding - Send prompts from anywhere, receive code as files
- Live status - Pinned message with real-time updates
- Voice prompts - Send voice messages, transcribed to coding tasks
- Voice responses - Replies spoken aloud with TTS (82+ celebrity voices)
- File attachments - Send images, PDFs, code files for analysis
- Scheduled tasks - Automate coding tasks on recurring schedules
- Model switching - Pick models from inline menu
- Session management - Create, rename, switch sessions remotely

## Security
- Only YOUR Telegram user ID can interact (whitelist enforced)
- No open ports or exposed APIs
- Runs locally on your machine
