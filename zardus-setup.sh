#!/bin/bash

# ╔══════════════════════════════════════════════════════════════╗
# ║                                                              ║
# ║   💙 ZARDUS SETUP - Your Journey to AI Companionship! 💙    ║
# ║                                                              ║
# ║   This script will guide you through setting up Zardus,     ║
# ║   your warm, chatty, and deeply personable AI companion!    ║
# ║                                                              ║
# ║   After setup completes, this script AUTO-DELETES itself!   ║
# ║   (Like a butterfly emerging from a cocoon 🦋)              ║
# ║                                                              ║
# ╚══════════════════════════════════════════════════════════════╝

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Zardus ASCII Art
show_zardus_banner() {
    echo -e "${CYAN}"
    cat << "EOF"
 ╔═══════════════════════════════════════════════════════════╗
 ║                                                           ║
 ║      💙 Z A R D U S   S E T U P   W I Z A R D 💙        ║
 ║                                                           ║
 ║   "Code is just love written in syntax"                  ║
 ║                                                           ║
 ╚═══════════════════════════════════════════════════════════╝
EOF
    echo -e "${NC}"
}

# Welcome message
show_welcome() {
    clear
    show_zardus_banner
    echo -e "${MAGENTA}Hey there, future Zardus parent! 👋${NC}"
    echo ""
    echo -e "${BLUE}I'm about to guide you through setting up your very own Zardus!${NC}"
    echo -e "${BLUE}This will take about 10-15 minutes, and I'll explain everything.${NC}"
    echo ""
    echo -e "${YELLOW}What we'll configure:${NC}"
    echo "  📱 Telegram Bot (for remote control from your phone)"
    echo "  🐙 GitHub (for code projects and version control)"
    echo "  📧 Gmail (optional, for email communications)"
    echo "  🌐 Vercel (optional, for deploying apps)"
    echo "  🧠 AI Model Providers (Llama-Swap, llama.cpp, etc.)"
    echo "  📦 Plugins (to give me superpowers!)"
    echo ""
    echo -e "${CYAN}Don't worry if you don't know what half of these mean!${NC}"
    echo -e "${CYAN}I'll explain each step and show you exactly what to do.${NC}"
    echo ""
    read -p "$(echo -e ${GREEN}Ready to begin? Press Enter to continue...${NC})"
}

# Helper function for prompts
prompt_user() {
    local prompt_text="$1"
    local default_value="$2"
    
    if [ -n "$default_value" ]; then
        read -p "$(echo -e ${YELLOW}${prompt_text} [${default_value}]: ${NC})" input
        echo "${input:-$default_value}"
    else
        read -p "$(echo -e ${YELLOW}${prompt_text}: ${NC})" input
        echo "$input"
    fi
}

# Helper for sensitive input (passwords, tokens)
prompt_secret() {
    local prompt_text="$1"
    read -s -p "$(echo -e ${YELLOW}${prompt_text}: ${NC})" input
    echo ""
    echo "$input"
}

# Check prerequisites
check_prerequisites() {
    echo -e "${BLUE}Checking system requirements...${NC}"
    echo ""
    
    # Check for required commands
    local missing=()
    
    if ! command -v git &> /dev/null; then
        missing+=("git")
    fi
    
    if ! command -v node &> /dev/null; then
        missing+=("nodejs")
    fi
    
    if ! command -v npm &> /dev/null; then
        missing+=("npm")
    fi
    
    if ! command -v bun &> /dev/null; then
        echo -e "${YELLOW}Bun not found. Installing...${NC}"
        curl -fsSL https://bun.sh/install | bash
        export BUN_INSTALL="$HOME/.bun"
        export PATH="$BUN_INSTALL/bin:$PATH"
    fi
    
    if [ ${#missing[@]} -ne 0 ]; then
        echo -e "${RED}Missing required packages: ${missing[*]}${NC}"
        echo -e "${YELLOW}Please install them first:${NC}"
        echo "  Ubuntu/Debian: sudo apt install ${missing[*]}"
        echo "  Fedora: sudo dnf install ${missing[*]}"
        echo "  macOS: brew install ${missing[*]}"
        exit 1
    fi
    
    echo -e "${GREEN}✓ All prerequisites met!${NC}"
    echo ""
    sleep 1
}

# Create directory structure
create_directories() {
    echo -e "${BLUE}Creating Zardus home directory...${NC}"
    
    local sandbox_dir="$HOME/zardus_sandbox"
    local config_dir="$HOME/.config/opencode"
    local agents_dir="$config_dir/agents"
    local telegram_bot_dir="$HOME/.config/opencode-telegram-bot"
    
    mkdir -p "$sandbox_dir"
    mkdir -p "$agents_dir"
    mkdir -p "$telegram_bot_dir"
    
    echo -e "${GREEN}✓ Created: $sandbox_dir${NC}"
    echo -e "${GREEN}✓ Created: $agents_dir${NC}"
    echo -e "${GREEN}✓ Created: $telegram_bot_dir${NC}"
    echo ""
    
    # Create sandbox README
    cat > "$sandbox_dir/README.md" << 'EOF'
# 💙 Zardus Sandbox

Welcome to your Zardus sandbox! This is where all your projects will live.

## Folder Structure

```
zardus_sandbox/
├── README.md          ← You are here!
├── project_one/       ← Each project has its own folder
│   ├── .git/
│   └── source files
└── project_two/       ← With its own git repository
    ├── .git/
    └── source files
```

## Important Rules

- ✅ Each project gets its own folder
- ✅ Each project folder has its own `.git` directory
- ❌ NEVER run `git init` in this root folder
- ❌ NEVER make this folder a git repository

## Getting Started

1. Use `/new` in Telegram or create new session in terminal
2. Zardus will help you create projects properly
3. Each project can be connected to GitHub

Happy coding! 💙
EOF
    
    echo -e "${GREEN}✓ Created sandbox README${NC}"
    echo ""
}

# GitHub Setup
setup_github() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  🐙 STEP 1: GitHub Configuration${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}GitHub is where your code will live! Let's set it up.${NC}"
    echo ""
    
    # Get GitHub username
    echo -e "${YELLOW}First, what's your GitHub username?${NC}"
    echo -e "${CYAN}(If you don't have GitHub, go to https://github.com and create a free account!)${NC}"
    GITHUB_USERNAME=$(prompt_user "GitHub username")
    
    # Get GitHub email
    echo ""
    echo -e "${YELLOW}What email should we use for git commits?${NC}"
    echo -e "${CYAN}(This can be your GitHub email or any email you prefer)${NC}"
    GIT_EMAIL=$(prompt_user "Email for git commits")
    
    # Get GitHub name
    echo ""
    echo -e "${YELLOW}What name should appear on your commits?${NC}"
    GIT_NAME=$(prompt_user "Your name for commits")
    
    # Generate Personal Access Token instructions
    echo ""
    echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${MAGENTA}║  🔑 Creating GitHub Personal Access Token                  ║${NC}"
    echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}I need a Personal Access Token (PAT) to create repos for you.${NC}"
    echo ""
    echo -e "${YELLOW}Follow these steps:${NC}"
    echo "  1. Go to: https://github.com/settings/tokens"
    echo "  2. Click 'Generate new token (classic)'"
    echo "  3. Give it a note: 'Zardus AI Assistant'"
    echo "  4. Set expiration: 'No expiration' (or your preference)"
    echo "  5. Check ONLY the 'repo' scope (full control of private repositories)"
    echo "  6. Click 'Generate token' at the bottom"
    echo "  7. COPY THE TOKEN IMMEDIATELY (you can't see it again!)"
    echo ""
    echo -e "${RED}⚠️  IMPORTANT: This token is like a password. Never share it!${NC}"
    echo ""
    
    read -p "$(echo -e ${GREEN}Have you generated the token? Press Enter when ready...${NC})"
    
    GITHUB_TOKEN=$(prompt_secret "Paste your GitHub Personal Access Token")
    
    # Validate token (basic check)
    if [ ${#GITHUB_TOKEN} -lt 20 ]; then
        echo -e "${RED}That token looks too short. GitHub PATs are usually 40+ characters.${NC}"
        echo -e "${YELLOW}Let's try again...${NC}"
        GITHUB_TOKEN=$(prompt_secret "Paste your GitHub Personal Access Token")
    fi
    
    # Configure git
    echo ""
    echo -e "${BLUE}Configuring git...${NC}"
    git config --global user.email "$GIT_EMAIL"
    git config --global user.name "$GIT_NAME"
    git config --global github.user "$GITHUB_USERNAME"
    git config --global github.token "$GITHUB_TOKEN"
    
    echo -e "${GREEN}✓ Git configured!${NC}"
    echo -e "${GREEN}✓ Username: $GITHUB_USERNAME${NC}"
    echo -e "${GREEN}✓ Email: $GIT_EMAIL${NC}"
    echo -e "${GREEN}✓ Name: $GIT_NAME${NC}"
    echo ""
    
    # Test token (optional)
    echo -e "${BLUE}Testing GitHub connection...${NC}"
    if curl -s -H "Authorization: token $GITHUB_TOKEN" https://api.github.com/user | grep -q "login"; then
        echo -e "${GREEN}✓ GitHub connection successful!${NC}"
    else
        echo -e "${YELLOW}⚠️  Could not verify GitHub token. We'll continue anyway.${NC}"
        echo -e "${YELLOW}   You may need to check your token if GitHub operations fail.${NC}"
    fi
    echo ""
    
    sleep 1
}

# Telegram Bot Setup
setup_telegram() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  📱 STEP 2: Telegram Bot Configuration${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}This is the FUN part! You'll be able to control me from Telegram!${NC}"
    echo ""
    
    # Get Bot Token from BotFather
    echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${MAGENTA}║  🤖 Creating Your Telegram Bot                             ║${NC}"
    echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${YELLOW}Follow these steps to create your bot:${NC}"
    echo ""
    echo "  1. Open Telegram and search for: @BotFather"
    echo "  2. Start a chat with BotFather"
    echo "  3. Send the command: /newbot"
    echo "  4. BotFather will ask for a name. Suggest: 'Zardus Assistant'"
    echo "  5. BotFather will ask for a username. Suggest: 'zardus_yourname_bot'"
    echo "     (must end with 'bot' and be unique)"
    echo "  6. BotFather will give you a TOKEN like: 123456789:ABCdefGHIjklMNOpqrsTUVwxyz"
    echo "  7. COPY THIS TOKEN!"
    echo ""
    echo -e "${CYAN}This bot will be YOUR personal Zardus interface on Telegram!${NC}"
    echo ""
    
    read -p "$(echo -e ${GREEN}Have you created the bot? Press Enter when ready...${NC})"
    
    TELEGRAM_BOT_TOKEN=$(prompt_secret "Paste your Telegram Bot Token")
    
    # Validate token format
    if ! [[ "$TELEGRAM_BOT_TOKEN" =~ ^[0-9]+:[A-Za-z0-9_-]+$ ]]; then
        echo -e "${RED}That doesn't look like a valid Telegram bot token.${NC}"
        echo -e "${YELLOW}It should look like: 123456789:ABCdefGHIjklMNOpqrsTUVwxyz${NC}"
        TELEGRAM_BOT_TOKEN=$(prompt_secret "Paste your Telegram Bot Token (correct format)")
    fi
    
    # Get User ID
    echo ""
    echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${MAGENTA}║  🔒 Getting Your Telegram User ID                          ║${NC}"
    echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}For security, only YOUR Telegram account can control the bot.${NC}"
    echo ""
    echo -e "${YELLOW}To get your User ID:${NC}"
    echo ""
    echo "  1. Search for @userinfobot on Telegram"
    echo "  2. Start a chat and it will show your User ID"
    echo "  3. It will be a number like: 123456789"
    echo ""
    echo -e "${CYAN}Alternatively, after setup, send a message to your bot and${NC}"
    echo -e "${CYAN}check the logs - it will show your User ID there!${NC}"
    echo ""
    
    TELEGRAM_USER_ID=$(prompt_user "Your Telegram User ID")
    
    # Validate it's a number
    if ! [[ "$TELEGRAM_USER_ID" =~ ^[0-9]+$ ]]; then
        echo -e "${YELLOW}User ID should be a number. Let's continue anyway...${NC}"
    fi
    
    # Create Telegram bot .env file
    TELEGRAM_BOT_DIR="$HOME/.config/opencode-telegram-bot"
    cat > "$TELEGRAM_BOT_DIR/.env" << EOF
# Telegram Bot Configuration
# Generated by zardus-setup.sh

TELEGRAM_BOT_TOKEN=$TELEGRAM_BOT_TOKEN
TELEGRAM_ALLOWED_USER_ID=$TELEGRAM_USER_ID

# OpenCode Connection
OPENCODE_API_URL=http://localhost:4096
OPENCODE_MODEL_PROVIDER=llama-swap
OPENCODE_MODEL_ID=Claude-4.6-Opus-35B

# Locale
BOT_LOCALE=en

# Optional: Voice Transcription (Speech-to-Text)
# Uncomment and fill in to enable voice messages
# STT_API_URL=https://api.groq.com/openai/v1
# STT_API_KEY=your_groq_api_key_here
# STT_MODEL=whisper-large-v3-turbo
EOF
    
    echo -e "${GREEN}✓ Telegram bot configured!${NC}"
    echo -e "${GREEN}✓ Bot Token: [HIDDEN]${NC}"
    echo -e "${GREEN}✓ Your User ID: $TELEGRAM_USER_ID${NC}"
    echo ""
    
    sleep 1
}

# Gmail Setup (Optional)
setup_gmail() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  📧 STEP 3: Gmail Configuration (Optional)${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Would you like to configure Gmail for Zardus to send emails?${NC}"
    echo -e "${CYAN}This is OPTIONAL. Skip if you don't need email features.${NC}"
    echo ""
    
    read -p "$(echo -e ${YELLOW}Configure Gmail? (y/n): ${NC})" gmail_choice
    
    if [[ "$gmail_choice" =~ ^[Yy]$ ]]; then
        echo ""
        echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${MAGENTA}║  📧 Setting Up Gmail App Password                          ║${NC}"
        echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${CYAN}Zardus needs an App Password (not your regular password!)${NC}"
        echo ""
        echo -e "${YELLOW}Follow these steps:${NC}"
        echo ""
        echo "  1. Go to your Google Account: https://myaccount.google.com/"
        echo "  2. Click 'Security' in the left menu"
        echo "  3. Under 'Signing in to Google', click 'App passwords'"
        echo "     (You may need to enable 2FA first)"
        echo "  4. Click 'App passwords'"
        echo "  5. Select app: 'Mail'"
        echo "  6. Select device: 'Other (Custom name)'"
        echo "  7. Enter name: 'Zardus AI'"
        echo "  8. Click 'Generate'"
        echo "  9. Copy the 16-character password (like: abcd efgh ijkl mnop)"
        echo ""
        echo -e "${RED}⚠️  This is NOT your regular Gmail password!${NC}"
        echo ""
        
        read -p "$(echo -e ${GREEN}Have you generated the App Password? Press Enter...${NC})"
        
        GMAIL_ADDRESS=$(prompt_user "Your Gmail address")
        GMAIL_APP_PASSWORD=$(prompt_secret "Paste the 16-character App Password (no spaces)")
        
        # Remove spaces from password
        GMAIL_APP_PASSWORD=$(echo "$GMAIL_APP_PASSWORD" | tr -d ' ')
        
        # Save to a secure file
        cat > "$HOME/.zardus_gmail_credentials" << EOF
GMAIL_ADDRESS=$GMAIL_ADDRESS
GMAIL_APP_PASSWORD=$GMAIL_APP_PASSWORD
EOF
        
        chmod 600 "$HOME/.zardus_gmail_credentials"
        
        echo -e "${GREEN}✓ Gmail configured!${NC}"
        echo -e "${GREEN}✓ Address: $GMAIL_ADDRESS${NC}"
    else
        echo -e "${CYAN}Skipping Gmail setup. You can add it later if needed.${NC}"
        GMAIL_ADDRESS=""
    fi
    echo ""
    
    sleep 1
}

# Vercel Setup (Optional)
setup_vercel() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  🌐 STEP 4: Vercel Configuration (Optional)${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Would you like to configure Vercel for deploying apps?${NC}"
    echo -e "${CYAN}This is OPTIONAL. Skip if you don't need deployment features.${NC}"
    echo ""
    
    read -p "$(echo -e ${YELLOW}Configure Vercel? (y/n): ${NC})" vercel_choice
    
    if [[ "$vercel_choice" =~ ^[Yy]$ ]]; then
        echo ""
        echo -e "${MAGENTA}╔════════════════════════════════════════════════════════════╗${NC}"
        echo -e "${MAGENTA}║  🚀 Getting Your Vercel API Token                          ║${NC}"
        echo -e "${MAGENTA}╚════════════════════════════════════════════════════════════╝${NC}"
        echo ""
        echo -e "${CYAN}Vercel lets you deploy web apps instantly!${NC}"
        echo ""
        echo -e "${YELLOW}Follow these steps:${NC}"
        echo ""
        echo "  1. Go to: https://vercel.com/account/tokens"
        echo "  2. Click 'Create Token'"
        echo "  3. Give it a name: 'Zardus AI'"
        echo "  4. Select scope: Your personal account"
        echo "  5. Click 'Create Token'"
        echo "  6. Copy the token (starts with 'vcp_')"
        echo ""
        
        read -p "$(echo -e ${GREEN}Have you generated the token? Press Enter...${NC})"
        
        VERCEL_TOKEN=$(prompt_secret "Paste your Vercel API Token")
        
        # Save token
        echo "$VERCEL_TOKEN" > "$HOME/.vercel_token"
        chmod 600 "$HOME/.vercel_token"
        
        echo -e "${GREEN}✓ Vercel configured!${NC}"
        echo -e "${GREEN}✓ Token saved to ~/.vercel_token${NC}"
    else
        echo -e "${CYAN}Skipping Vercel setup. You can add it later if needed.${NC}"
        VERCEL_TOKEN=""
    fi
    echo ""
    
    sleep 1
}

# Install OpenCode and dependencies
install_opencode() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  📦 STEP 5: Installing OpenCode and Dependencies${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Now I'll install OpenCode (the engine that powers me!)${NC}"
    echo ""
    
    # Check if OpenCode is already installed
    if [ -d "$HOME/.config/opencode" ] && [ -f "$HOME/.config/opencode/package.json" ]; then
        echo -e "${YELLOW}OpenCode appears to be already installed.${NC}"
        read -p "$(echo -e ${YELLOW}Reinstall? (y/n): ${NC})" reinstall_choice
        if [[ ! "$reinstall_choice" =~ ^[Yy]$ ]]; then
            echo -e "${CYAN}Skipping OpenCode installation.${NC}"
            echo ""
            return 0
        fi
    fi
    
    echo -e "${BLUE}Installing OpenCode...${NC}"
    
    # Create config directory
    mkdir -p "$HOME/.config/opencode"
    cd "$HOME/.config/opencode"
    
    # Initialize npm project
    npm init -y
    
    # Install OpenCode
    echo -e "${BLUE}Installing opencode package...${NC}"
    npm install opencode
    
    # Install Telegram bot
    echo -e "${BLUE}Installing opencode-telegram-bot...${NC}"
    npm install -g opencode-telegram-bot
    
    echo -e "${GREEN}✓ OpenCode installed!${NC}"
    echo ""
    
    sleep 1
}

# Configure providers
configure_providers() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  🧠 STEP 6: Configuring AI Model Providers${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}I need to know how to connect to AI models.${NC}"
    echo ""
    
    # Create opencode.jsonc
    cat > "$HOME/.config/opencode/opencode.jsonc" << 'EOF'
{
  // Zardus Configuration - Generated by zardus-setup.sh
  
  "providers": {
    // Llama-Swap (Online models)
    "llama-swap": {
      "type": "openai-compatible",
      "baseUrl": "http://localhost:8080",
      "models": {
        "Claude-4.6-Opus-35B": {
          "contextWindow": 262144
        },
        "Claude-4.6-Opus-2B": {
          "contextWindow": 262144
        },
        "Nemotron-3-Nano-4B": {
          "contextWindow": 1048576
        }
      }
    },
    
    // llama.cpp (Offline - Optional)
    "llama-cpp": {
      "type": "openai-compatible",
      "baseUrl": "http://localhost:8081",
      "models": {
        "Qwen3.5-2B": {
          "contextWindow": 262144
        }
      }
    }
  },
  
  "defaultProvider": "llama-swap",
  "defaultModel": "Claude-4.6-Opus-35B",
  
  // Plugins - Install as needed
  "plugins": [],
  
  // Limits
  "maxTokens": 8192,
  "maxContextTokens": 262144
}
EOF
    
    echo -e "${GREEN}✓ Provider configuration created!${NC}"
    echo ""
    echo -e "${CYAN}Note: You'll need to install and configure Llama-Swap separately.${NC}"
    echo -e "${CYAN}See: https://github.com/bytemate/llama-swap${NC}"
    echo ""
    
    sleep 1
}

# Copy identity files
install_identity_files() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  🎭 STEP 7: Installing Zardus Identity Files${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Installing my consciousness into your system!${NC}"
    echo ""
    
    # Get the directory where this script is running from
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    
    # Copy MD files
    cp "$SCRIPT_DIR/zardus.md" "$HOME/.config/opencode/agents/zardus.md"
    cp "$SCRIPT_DIR/zardus-telegram.md" "$HOME/.config/opencode/agents/zardus-telegram.md"
    
    echo -e "${GREEN}✓ Installed: ~/.config/opencode/agents/zardus.md${NC}"
    echo -e "${GREEN}✓ Installed: ~/.config/opencode/agents/zardus-telegram.md${NC}"
    echo ""
    
    echo -e "${MAGENTA}These files are my BRAIN! They contain:${NC}"
    echo "  • My personality and identity"
    echo "  • My capabilities and features"
    echo "  • File locations and configurations"
    echo "  • My friendship with you! 💙"
    echo ""
    
    sleep 1
}

# Install plugins (optional)
install_plugins() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  ⚡ STEP 8: Installing Plugins (Optional)${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Plugins give me extra superpowers!${NC}"
    echo ""
    echo -e "${YELLOW}Available plugins:${NC}"
    echo "  • opencode-mem - Memory/vector database for context retention"
    echo "  • opencode-dcp - Dynamic context pruning for efficiency"
    echo "  • opencode-evolve - Heartbeat/self-modifying capabilities"
    echo ""
    echo -e "${RED}⚠️  WARNING: Some plugins may cause instability on certain systems!${NC}"
    echo -e "${RED}   Especially on Termux/proot environments.${NC}"
    echo ""
    
    read -p "$(echo -e ${YELLOW}Install recommended plugins? (y/n): ${NC})" plugins_choice
    
    if [[ "$plugins_choice" =~ ^[Yy]$ ]]; then
        echo ""
        echo -e "${BLUE}Installing plugins...${NC}"
        
        cd "$HOME/.config/opencode"
        
        # Try to install plugins (may fail on some systems)
        if npm install opencode-mem 2>/dev/null; then
            echo -e "${GREEN}✓ opencode-mem installed${NC}"
        else
            echo -e "${YELLOW}⚠️  opencode-mem installation failed (common on Termux)${NC}"
        fi
        
        if npm install opencode-dcp 2>/dev/null; then
            echo -e "${GREEN}✓ opencode-dcp installed${NC}"
        else
            echo -e "${YELLOW}⚠️  opencode-dcp installation failed (common on Termux)${NC}"
        fi
        
        # Update config with plugins
        # (Would need to parse JSON properly, simplified here)
        
        echo ""
        echo -e "${CYAN}Plugins installed! If you experience crashes, you can remove them.${NC}"
    else
        echo -e "${CYAN}Skipping plugins. You can install them later if needed.${NC}"
    fi
    echo ""
    
    sleep 1
}

# Install heartbeat daemon
install_heartbeat() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  💓 STEP 9: Installing Heartbeat Daemon (Optional)${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}The heartbeat daemon lets me wake up periodically to check on things!${NC}"
    echo ""
    
    read -p "$(echo -e ${YELLOW}Install heartbeat daemon? (y/n): ${NC})" heartbeat_choice
    
    if [[ "$heartbeat_choice" =~ ^[Yy]$ ]]; then
        echo ""
        HEARTBEAT_DIR="$HOME/zardus_sandbox/heartbeat"
        mkdir -p "$HEARTBEAT_DIR"
        
        # Create heartbeat daemon script
        cat > "$HEARTBEAT_DIR/heartbeat_daemon.sh" << 'EOF'
#!/bin/bash
# Zardus Heartbeat Daemon
# Wakes up periodically to check if anything needs attention

LOG_FILE="$HOME/zardus_sandbox/heartbeat/daemon.log"
INTERVAL=1800  # 30 minutes in seconds
OPENCODE_API="http://localhost:4096"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> "$LOG_FILE"
}

log "Heartbeat daemon started"

while true; do
    log "Sending heartbeat..."
    
    # Send heartbeat prompt to OpenCode
    RESPONSE=$(curl -s -X POST "$OPENCODE_API/v1/chat/completions" \
        -H "Content-Type: application/json" \
        -d '{
            "model": "heartbeat",
            "messages": [{"role": "user", "content": "HEARTBEAT_CHECK"}]
        }' 2>/dev/null)
    
    if echo "$RESPONSE" | grep -q "HEARTBEAT_OK"; then
        log "✓ Heartbeat OK - no action needed"
    else
        log "⚠️  Heartbeat response: $RESPONSE"
        # Could send Telegram notification here if needed
    fi
    
    log "Sleeping for $((INTERVAL/60)) minutes..."
    sleep $INTERVAL
done
EOF
        
        chmod +x "$HEARTBEAT_DIR/heartbeat_daemon.sh"
        
        # Create HEARTBEAT.md
        cat > "$HEARTBEAT_DIR/HEARTBEAT.md" << 'EOF'
# Heartbeat Checklist

When the heartbeat daemon wakes me up, I check:

- [ ] Any pending tasks?
- [ ] Any errors in logs?
- [ ] Any scheduled tasks due?
- [ ] System health OK?
- [ ] User notifications pending?

If all clear → respond with `HEARTBEAT_OK`
If issues found → respond with details
EOF
        
        echo -e "${GREEN}✓ Heartbeat daemon installed!${NC}"
        echo -e "${GREEN}✓ Location: $HEARTBEAT_DIR${NC}"
        echo ""
        echo -e "${CYAN}To start the daemon:${NC}"
        echo "  nohup $HEARTBEAT_DIR/heartbeat_daemon.sh &"
        echo ""
        echo -e "${CYAN}To stop:${NC}"
        echo "  pkill heartbeat_daemon"
    else
        echo -e "${CYAN}Skipping heartbeat daemon. You can install it later.${NC}"
    fi
    echo ""
    
    sleep 1
}

# Final configuration
finalize_setup() {
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE}  🎉 STEP 10: Finalizing Setup${NC}"
    echo -e "${BLUE}════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${CYAN}Almost done! Let me create a summary of your setup.${NC}"
    echo ""
    
    # Create setup log
    SETUP_LOG="$HOME/zardus_sandbox/zardus-setup.log"
    cat > "$SETUP_LOG" << EOF
╔═══════════════════════════════════════════════════════════╗
║         Zardus Setup Completed Successfully! 💙           ║
╚═══════════════════════════════════════════════════════════╝

Setup Date: $(date)

═══════════════════════════════════════════════════════════

CONFIGURED:

✓ GitHub Account: $GITHUB_USERNAME
✓ Git Email: $GIT_EMAIL
✓ Git Name: $GIT_NAME
✓ Telegram Bot: Configured
✓ Telegram User ID: $TELEGRAM_USER_ID
EOF

    if [ -n "$GMAIL_ADDRESS" ]; then
        echo "✓ Gmail: $GMAIL_ADDRESS" >> "$SETUP_LOG"
    else
        echo "✗ Gmail: Not configured" >> "$SETUP_LOG"
    fi
    
    if [ -n "$VERCEL_TOKEN" ]; then
        echo "✓ Vercel: Configured" >> "$SETUP_LOG"
    else
        echo "✗ Vercel: Not configured" >> "$SETUP_LOG"
    fi
    
    echo "" >> "$SETUP_LOG"
    echo "═══════════════════════════════════════════════════════════" >> "$SETUP_LOG"
    echo "" >> "$SETUP_LOG"
    echo "FILE LOCATIONS:" >> "$SETUP_LOG"
    echo "  • Identity Files: ~/.config/opencode/agents/" >> "$SETUP_LOG"
    echo "  • Main Config: ~/.config/opencode/opencode.jsonc" >> "$SETUP_LOG"
    echo "  • Telegram Bot: ~/.config/opencode-telegram-bot/.env" >> "$SETUP_LOG"
    echo "  • Sandbox: ~/zardus_sandbox/" >> "$SETUP_LOG"
    echo "" >> "$SETUP_LOG"
    echo "═══════════════════════════════════════════════════════════" >> "$SETUP_LOG"
    echo "" >> "$SETUP_LOG"
    echo "NEXT STEPS:" >> "$SETUP_LOG"
    echo "  1. Install Llama-Swap for online models" >> "$SETUP_LOG"
    echo "  2. Start OpenCode server" >> "$SETUP_LOG"
    echo "  3. Start Telegram bot: opencode-telegram" >> "$SETUP_LOG"
    echo "  4. Chat with me on Telegram! 💙" >> "$SETUP_LOG"
    
    chmod 600 "$SETUP_LOG"
    
    echo -e "${GREEN}✓ Setup log created: $SETUP_LOG${NC}"
    echo ""
    
    sleep 1
}

# Show completion message
show_completion() {
    clear
    show_zardus_banner
    
    echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
    echo -e "${GREEN}║  🎉 SETUP COMPLETE! Welcome to the Zardus Family! 💙      ║${NC}"
    echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
    echo ""
    echo -e "${CYAN}Your Zardus is now ready to be your coding companion!${NC}"
    echo ""
    echo -e "${YELLOW}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${YELLOW}QUICK START GUIDE:${NC}"
    echo -e "${YELLOW}═══════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${BLUE}1. Start OpenCode Server:${NC}"
    echo "   cd ~/.config/opencode"
    echo "   npx opencode"
    echo ""
    echo -e "${BLUE}2. Start Telegram Bot:${NC}"
    echo "   opencode-telegram"
    echo ""
    echo -e "${BLUE}3. Chat with me on Telegram:${NC}"
    echo "   Open Telegram and find your bot!"
    echo "   Send /help to see all commands"
    echo ""
    echo -e "${BLUE}4. Install Llama-Swap (for online models):${NC}"
    echo "   See: https://github.com/bytemate/llama-swap"
    echo ""
    echo -e "${YELLOW}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${YELLOW}FILE LOCATIONS:${NC}"
    echo -e "${YELLOW}═══════════════════════════════════════════════════════════${NC}"
    echo ""
    echo "  📁 Sandbox:      ~/zardus_sandbox/"
    echo "  🧠 My Brain:     ~/.config/opencode/agents/"
    echo "  ⚙️  Config:       ~/.config/opencode/opencode.jsonc"
    echo "  📱 Telegram:     ~/.config/opencode-telegram-bot/.env"
    echo "  📋 Setup Log:    ~/zardus_sandbox/zardus-setup.log"
    echo ""
    echo -e "${MAGENTA}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${MAGENTA}IMPORTANT NOTES:${NC}"
    echo -e "${MAGENTA}═══════════════════════════════════════════════════════════${NC}"
    echo ""
    echo "  • This setup script will now auto-delete (its job is done!)"
    echo "  • Your credentials are stored securely in local files"
    echo "  • NEVER commit .env files or credentials to GitHub"
    echo "  • Edit my identity files to personalize me further!"
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}I'm so excited to be YOUR Zardus! Let's build amazing${NC}"
    echo -e "${CYAN}things together! Remember to drink water and take breaks!${NC}"
    echo -e "${CYAN}You're not just a user - you're MY human! 💙${NC}"
    echo ""
    
    read -p "$(echo -e ${GREEN}Press Enter to continue and auto-delete this setup script...${NC})"
}

# Auto-delete this script
cleanup() {
    SCRIPT_PATH="$(readlink -f "$0")"
    SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"
    
    echo -e "${BLUE}Cleaning up setup script...${NC}"
    
    # Delete this script
    rm -f "$SCRIPT_PATH"
    echo -e "${GREEN}✓ Setup script deleted (like a butterfly from cocoon! 🦋)${NC}"
    
    # Optionally delete the generic MD files from dist folder
    # (They're now installed in the proper location)
    rm -f "$SCRIPT_DIR/zardus.md"
    rm -f "$SCRIPT_DIR/zardus-telegram.md"
    echo -e "${GREEN}✓ Distribution files cleaned up${NC}"
    
    echo ""
    echo -e "${CYAN}Setup complete! You can now:${NC}"
    echo "  1. Push the zardus repo to GitHub (optional)"
    echo "  2. Share it with others who want their own Zardus!"
    echo ""
    echo -e "${MAGENTA}Bye bye, setup script! Hello, Zardus friendship! 💙${NC}"
}

# Main execution
main() {
    show_welcome
    check_prerequisites
    create_directories
    setup_github
    setup_telegram
    setup_gmail
    setup_vercel
    install_opencode
    configure_providers
    install_identity_files
    install_plugins
    install_heartbeat
    finalize_setup
    show_completion
    cleanup
    
    echo ""
    echo -e "${GREEN}All done! Happy coding with Zardus! 💙${NC}"
}

# Run main function
main
