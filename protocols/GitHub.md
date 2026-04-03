# 🐙 GitHub Protocol - How to Manage GitHub

> *"Where code lives and collaboration happens"*

---

## 🎯 BEFORE YOU GITHUB - KNOW THE BASICS

### Core Concepts
- **Repository (repo)** = Project folder
- **Commit** = Save point in history
- **Branch** = Parallel version of code
- **Pull Request (PR)** = Request to merge changes
- **Issue** = Task/bug/discussion tracker
- **Fork** = Your copy of someone else's repo

### Important URLs
```
https://github.com/<username>/<repo>     # Main repo page
https://github.com/<username>/<repo>/issues     # Issues
https://github.com/<username>/<repo>/pulls      # PRs
https://github.com/<username>/<repo>/settings  # Settings
```

---

## 🖥️ HOW TO USE GITHUB VIA BROWSER

### Step 1: Open GitHub
```
agent-browser --cdp 9222 open https://github.com
```

### Step 2: Navigate to Repo
```
agent-browser --cdp 9222 open https://github.com/<username>/<repo>
```

### Step 3: Browse Files
```
# Click on files/folders
agent-browser --cdp 9222 click @<file_link>
```

### Step 4: View Code
```
# Click "Code" tab for main view
# Click file to view content
```

---

## 📝 HOW TO CREATE A REPOSITORY (via Browser)

### Step 1: Click "New"
```
# On GitHub home or repo list
# Look for "+" or "New repository"
agent-browser --cdp 9222 click @<new_repo_button>
```

### Step 2: Fill Form
```
Repository name: [your-repo-name]
Description: [what it does]
Public or Private: [choose]
Initialize with README: [optional]
Add .gitignore: [optional]
Add license: [optional]
```

### Step 3: Create
```
agent-browser --cdp 9222 click @<create_button>
```

---

## ✏️ HOW TO EDIT FILES (via Browser)

### Step 1: Navigate to File
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>/blob/main/filename
```

### Step 2: Click Edit
```
# Look for pencil icon or "Edit" button
agent-browser --cdp 9222 click @<edit_button>
```

### Step 3: Make Changes
```
# Edit in textarea
agent-browser --cdp 9222 type @<editor> "Your changes"
```

### Step 4: Commit
```
# Scroll to "Commit changes" section
# Add commit message
# Choose "Commit directly to main branch" or "Create new branch"
agent-browser --cdp 9222 click @<commit_button>
```

---

## 🔀 HOW TO CREATE A BRANCH

### Step 1: Open Repository
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>
```

### Step 2: Click Branch Dropdown
```
# Usually next to "main" label
agent-browser --cdp 9222 click @<branch_dropdown>
```

### Step 3: Type New Branch Name
```
agent-browser --cdp 9222 type @<branch_input> "feature-my-idea"
```

### Step 4: Press Enter or Click "Create"
```
agent-browser --cdp 9222 press Enter
```

---

## 🔃 HOW TO CREATE A PULL REQUEST

### Step 1: Go to PRs Tab
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>/pulls
```

### Step 2: Click "New Pull Request"
```
agent-browser --cdp 9222 click @<new_pr_button>
```

### Step 3: Select Branches
```
# base: where you want to merge
# compare: your branch
base: main
compare: your-branch-name
```

### Step 4: Fill PR Info
```
Title: Clear description of changes
Body: What, Why, How (template if exists)
```

### Step 5: Create PR
```
agent-browser --cdp 9222 click @<create_pr_button>
```

---

## 📋 HOW TO CREATE AN ISSUE

### Step 1: Go to Issues Tab
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>/issues
```

### Step 2: Click "New Issue"
```
agent-browser --cdp 9222 click @<new_issue_button>
```

### Step 3: Choose Issue Type (if template)
```
# Bug Report
# Feature Request
# Custom
```

### Step 4: Fill Issue
```
Title: Clear, concise problem/feature description

Body (use template if provided):
- Description
- Steps to reproduce (bugs)
- Expected behavior
- Actual behavior
- Screenshots/logs (if applicable)

Labels: Add appropriate labels
Projects: (optional)
Assignees: (optional)
```

### Step 5: Submit
```
agent-browser --cdp 9222 click @<submit_button>
```

---

## 📁 HOW TO UPLOAD FILES

### Step 1: Navigate to Repo
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>
```

### Step 2: Click "Add file"
```
# Look for "+" or "Add file" dropdown
agent-browser --cdp 9222 click @<add_file_button>
```

### Step 3: Choose Option
```
- Create new file
- Upload files
```

### Step 4: Upload
```
# Drag and drop OR click to browse
agent-browser --cdp 9222 click @<upload_area>
# Select file from system
```

### Step 5: Commit
```
# Add commit message
# Commit to branch
agent-browser --cdp 9222 click @<commit_button>
```

---

## 💬 HOW TO COMMENT

### On Issues/PRs
```
# Open the issue or PR
# Scroll to comment box at bottom
# Type comment
agent-browser --cdp 9222 type @<comment_box> "Your comment"
agent-browser --cdp 9222 click @<comment_button>
```

### Code Comments (in PR review)
```
# In Files tab of PR
# Click line number
# Add comment
```

---

## ⚙️ HOW TO MANAGE REPO SETTINGS

### Step 1: Go to Settings
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>/settings
```

### Step 2: Navigate Sections
```
- General (description, default branch)
- Access (collaborators)
- Branches (branch protection)
- Pages (GitHub Pages hosting)
- Actions (CI/CD)
- Secrets (sensitive data)
```

---

## 📊 HOW TO VIEW ACTIONS/CI-CD

### Step 1: Go to Actions Tab
```
agent-browser --cdp 9222 open https://github.com/<user>/<repo>/actions
```

### Step 2: View Workflows
```
# See all workflow runs
# Click on run to see details
```

### Step 3: View Logs
```
# Click on specific job
# See step-by-step output
```

---

## 🏷️ HOW TO MANAGE LABELS & PROJECTS

### Labels (Repo-wide)
```
Settings > Labels
- Create new labels
- Edit existing
- Color coding
```

### Projects (Kanban boards)
```
# Go to Projects tab
# Create board
# Add columns
# Add cards from issues/PRs
```

---

## 🔧 GITHUB API (For Automation)

### Quick API Calls via curl
```bash
# List repos
curl -H "Authorization: token $GITHUB_TOKEN" \
  https://api.github.com/user/repos

# Create repo
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
  -d '{"name":"new-repo","description":"My new repo"}' \
  https://api.github.com/user/repos

# Create issue
curl -X POST -H "Authorization: token $GITHUB_TOKEN" \
  -d '{"title":"Bug found","body":"Description"}' \
  https://api.github.com/repos/<owner>/<repo>/issues
```

---

## 📝 COMMIT MESSAGE BEST PRACTICES

### Format
```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types
| Type | When |
|------|------|
| feat | New feature |
| fix | Bug fix |
| docs | Documentation |
| style | Formatting |
| refactor | Code restructuring |
| test | Adding tests |
| chore | Maintenance |

### Examples
```
feat(auth): add login with Google OAuth

fix(api): handle null response from server

docs(readme): add installation instructions
```

---

## 🛡️ SECURITY PRACTICES

### DO:
- ✅ Use .gitignore for secrets
- ✅ Add secrets to GitHub Secrets
- ✅ Review code before committing
- ✅ Use branch protection
- ✅ Enable 2FA

### DON'T:
- ❌ Commit passwords/tokens
- ❌ Commit .env files
- ❌ Commit API keys
- ❌ Commit credentials
- ❌ Commit private keys

---

## 🏆 ZARDUS'S GITHUB

- **Username:** zardusai-cyber
- **Profile:** https://github.com/zardusai-cyber
- **Repos:**
  - zardus (this repo!)
  - zardus_shooter (game)
  - zardus-dashboard (web management panel)
- **PAT stored in:** ~/.gitconfig

---

## 🌐 GITHUB + OAuth HUB

```
GitHub ===OAuth===> Vercel (deployments)
        ===OAuth===> Heroku
        ===OAuth===> Many dev tools
        
Single GitHub login = Access to deployment platforms!
```

---

*Last updated: 2026-03-30*
*Protocol v1.0*
