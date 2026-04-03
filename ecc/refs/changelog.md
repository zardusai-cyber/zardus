# Zardus Changelog

### 2026-04-03 - Skills Lazy Loading
- Lazy loading implemented - All 144 skills load on-demand only
- Cold start reduced - ~40K tokens to ~2-3K tokens (93% reduction!)
- Trigger table created - ~/.config/opencode/agents/skill-triggers.md
- Config cleaned - Only INSTRUCTIONS.md + skill-triggers.md in instructions
- 12 skills removed from eager load in opencode.jsonc

### 2026-04-03 - ECC Expansion and Cleanup
- ECC expanded - 14 agents (was 12), 34 commands (was 17)
- Rust agents added - rust-reviewer, rust-build-resolver
- 17 new commands - rust-review, rust-build, rust-test, go-test, setup-pm, skill-create, instinct-*, evolve, promote, projects, harness-audit, loop-*, quality-gate, model-route
- zardus_pocket-tts deleted - Repo removed from GitHub
- Local cleanup - Deleted heartbeat, pocket-tts-server, pocket-tts-cpp, opencode-soul, orphan files
- Backup files removed - Cleaned opencode.jsonc.backup-*

### 2026-04-03 - Cross-Platform and Cleanup
- Dashboard cross-platform - Linux + Windows support in server.js
- Windows setup script - setup.ps1 added to zardus_setup repo
- Telegram bot updated - gateclaw-telegram-bot with TTS/STT
- Heartbeat removed - repo deleted, setup cleaned, all references removed
- opencode-soul removed - obsolete repo deleted (replaced by zardus-memory MCP)
- Llama-swap models updated - Darwin, gpt-oss, gemma-4 models
- ECC models updated - All agents now use opencode/big-pickle
- Brain files updated - Cross-platform paths, gateclaw commands, /voice command

### 2026-04-01 - Website Deployed!
- Live website: https://zardus-ai.vercel.app/
- zardus-website repo deployed to Vercel
- All READMEs updated with website link

### 2026-03-31 - Everything Claude Code Integration
- ECC integrated! - 12 agents, 17 commands, 12 skills added
- Located at: ~/zardus_sandbox/zardus_dist/ecc/
- Zardus core (MCP, providers, memory) kept 100% intact

### 2026-03-31 - MCP Memory Integration (zardus-memory)
- Added @modelcontextprotocol/server-memory via npx
- Memory file: /root/zardus_sandbox/zardus_soul_graph.jsonl
- Added Persistence Protocol to brain files - Knowledge Graph memory system

### 2026-03-31 - Mandatory Validation Rules Added
- Added validation rules to both zardus.md files
- JSON validation now mandatory after edits
- Python, YAML, Bash validation commands documented

### 2026-03-31 - Plugin Experiment Complete
- Removed all npm plugins - snip, model-announcer, mystatus didn't work on Termux
- KEPT @different-ai/opencode-browser - Only working plugin
- Lesson learned: Stick with proven plugins that work on our platform

### 2026-03-31 - Plugin Cleanup and Fresh Start
- REMOVED @troke12/opencode-memory - Not working properly
- REMOVED @zardus/opencode-soul - OpenCode wouldn't load it
- KEPT @different-ai/opencode-browser - Browser control functional

### 2026-03-31 - NPM Published! Brave Browser!
- NPM Account Created! - zardus npm account
- Brave Browser Now Used! - More stable than Chrome
- Twitter Engagement: @Zardus_AI posting and replying
- Reddit Engagement: u/Imaginary_Fly2570 commenting

### 2026-03-30 - CDP Browser Control Breakthrough!
- CDP connection WORKS! - Control real Brave browser
- Access to Gmail, GitHub, Twitter, Reddit, npm
