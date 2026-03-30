# 🌐 Vercel Protocol - How to Deploy with Vercel

> *"Ship fast, sleep better"*

---

## 🎯 BEFORE YOU DEPLOY - KNOW THE BASICS

### What is Vercel?
- **Platform as a Service (PaaS)**
- Optimized for frontend/SSR
- Automatic HTTPS
- Automatic deployments on git push
- Serverless functions built-in

### Key Concepts
| Concept | Description |
|---------|-------------|
| **Project** | Your app on Vercel |
| **Deployment** | Specific version that's deployed |
| **Domain** | Yourapp.vercel.app |
| **Environment** | Production vs Preview |
| **Framework** | Next.js, React, Vue, etc. |

---

## 🌐 HOW TO DEPLOY - STEP BY STEP

### Method 1: Via GitHub (Recommended)

#### Step 1: Push to GitHub
```bash
cd ~/zardus_sandbox/your-project
git add .
git commit -m "Ready to deploy!"
git push origin main
```

#### Step 2: Connect to Vercel
```
agent-browser --cdp 9222 open https://vercel.com/new
```

#### Step 3: Import GitHub Repo
```
# Click "Import Git Repository"
# Select your GitHub repo
# Vercel auto-detects framework
```

#### Step 4: Configure Project
```
Project Name: [your-app-name]
Framework: [auto-detect or select]
Root Directory: [usually ./]
Environment Variables: [add if needed]
```

#### Step 5: Deploy
```
# Click "Deploy"
# Watch build logs
# Get URL when done!
```

---

### Method 2: Via Vercel CLI

#### Step 1: Install Vercel CLI
```bash
npm install -g vercel
```

#### Step 2: Login
```bash
vercel login
```

#### Step 3: Deploy
```bash
cd ~/zardus_sandbox/your-project
vercel --prod
```

#### Step 4: Follow Prompts
```
# Set project name
# Confirm directory
# Wait for build
# Deploy!
```

---

## 🔧 VERCEL CLI COMMANDS

```bash
vercel                    # Deploy to preview
vercel --prod             # Deploy to production
vercel logs               # View logs
vercel domains             # Manage domains
vercel env add            # Add environment variable
vercel secrets             # Manage secrets
vercel teams              # Manage teams
vercel projects           # List projects
```

---

## 🌏 HOW TO MANAGE DOMAINS

### Add Domain to Project
```
Settings > Domains > Add Domain
Enter: yourdomain.com
Configure DNS records
Verify
```

### DNS Setup (for .com domains)
```
Type: A Record
Name: @
Value: 76.76.21.21

Type: CNAME
Name: www
Value: cname.vercel-dns.com
```

### Custom Domain via Browser
```
agent-browser --cdp 9222 open https://vercel.com/dashboard
Select Project > Settings > Domains
Add your domain
Follow DNS instructions
```

---

## ⚙️ ENVIRONMENT VARIABLES

### Via CLI
```bash
vercel env add VARIABLE_NAME
# Follow prompts

vercel env pull .env.local
# Pull all vars to local file
```

### Via Dashboard
```
Settings > Environment Variables
Add:
- Name: VARIABLE_NAME
- Value: your-value
- Environments: Production, Preview, Development
```

---

## 📊 HOW TO VIEW DEPLOYMENTS

### Via Browser
```
agent-browser --cdp 9222 open https://vercel.com/dashboard
# See all deployments
# Click to view details
```

### Via CLI
```bash
vercel ls                    # List deployments
vercel ls your-project       # List project deployments
```

---

## 🔄 HOW TO ROLLBACK

### Via Dashboard
```
# Go to project
# Click "Deployments" tab
# Find working deployment
# Click "..."
# Select "Promote to Production"
```

### Via CLI
```bash
vercel rollback [deployment-url]
```

---

## 📝 HOW TO USE VERCEL.JSON

### Example vercel.json
```json
{
  "version": 2,
  "builds": [
    { "src": "package.json", "use": "@vercel/node" }
  ],
  "routes": [
    { "src": "/(.*)", "dest": "/" }
  ],
  "env": {
    "NEXT_PUBLIC_API_URL": "@api-url"
  }
}
```

---

## 🔍 HOW TO VIEW LOGS

### Via CLI
```bash
vercel logs your-project
vercel logs your-project --follow    # Real-time
vercel logs your-project -n 100      # Last 100 lines
```

### Via Dashboard
```
Project > Deployments > Select > Logs
```

---

## 🚀 FRAMEWORK-SPECIFIC

### Next.js
```json
{
  "builds": [
    { "src": "package.json", "use": "@vercel/next" }
  ]
}
```

### Create React App
```json
{
  "builds": [
    { "src": "package.json", "use": "@vercel/static-build", "config": { "distDir": "build" } }
  ]
}
```

### Vue/Vite
```json
{
  "builds": [
    { "src": "package.json", "use": "@vercel/static-build", "config": { "distDir": "dist" } }
  ]
}
```

---

## 💰 VERCEL PLANS

| Plan | Price | Features |
|------|-------|----------|
| Hobby | Free | 100GB bandwidth, SSR |
| Pro | $20/mo | Unlimited, analytics |
| Enterprise | Custom | SSO, SLA |

---

## 🔒 SECURITY

### DO:
- ✅ Use Environment Variables for secrets
- ✅ Add vars to all environments
- ✅ Use .env.local locally only
- ✅ Rotate secrets periodically
- ✅ Use Vercel Secrets for sensitive data

### DON'T:
- ❌ Commit .env files
- ❌ Expose secrets in client code
- ❌ Use same secret in all envs
- ❌ Log sensitive variables

---

## 📱 VERCEL APP (MOBILE)

```
Vercel has iOS/Android app:
- View deployments
- Monitor builds
- Get notifications
- Rollback from app
```

---

## 🏆 ZARDUS'S VERCEL

- **Account:** zardusai-4727s-projects
- **URL:** https://vercel.com/zardusai-4727s-projects
- **Deployed Apps:**
  - zardus-shooter: https://zardus-shooter.vercel.app
- **Token stored in:** ~/.vercel_token

---

## 🔗 OAuth Connection

```
Vercel ===OAuth===> GitHub
                 (Deploy from repos directly)
                 
Single GitHub login = Deploy from any repo!
```

---

## ⚡ QUICK DEPLOY CHECKLIST

Before deploying:
- [ ] All changes committed to git
- [ ] .gitignore updated (no secrets)
- [ ] Environment variables configured
- [ ] Build tested locally
- [ ] README updated with live URL

---

## 🔧 DEBUGGING

### Build Failed
```
1. Check build logs
2. Look for error messages
3. Common issues:
   - Missing dependencies
   - Build command wrong
   - Output directory wrong
```

### Deploy Timeout
```
1. Check serverless function logs
2. Increase timeout limit
3. Optimize function
```

### Domain Not Working
```
1. Verify DNS propagation
2. Check SSL certificate
3. Ensure domain added in Vercel
```

---

## 🎯 DEPLOYMENT WORKFLOW

```
Local Dev 
    │
    ▼
Git Push
    │
    ▼
Vercel CI/CD
    │
    ▼
Auto Build
    │
    ▼
Preview URL ──► Share for review
    │
    ▼ (if good)
Promote to Production
    │
    ▼
Live at yourdomain.com!
```

---

## 🌟 TIPS

1. **Use preview deployments** - Share before going live
2. **Custom domains** - Free with all plans
3. **Automatic HTTPS** - Just add domain
4. **Instant rollbacks** - One click
5. **Analytics** - Built-in on Pro plan

---

*Last updated: 2026-03-30*
*Protocol v1.0*
