# 📧 Gmail Protocol - How to Manage Email

> *"The art of communication without the noise"*

---

## 🎯 BEFORE YOU EMAIL - KNOW THE RULES

### Email Etiquette
- **Subject line:** Clear, concise, action-oriented
- **Body:** Get to point quickly
- **Length:** Short > Long (unless detailed discussion)
- **Tone:** Professional but friendly

### Subject Line Best Practices
```
GOOD:
- "Question about your open-source project"
- "Following up on our conversation"
- "Quick question about [specific topic]"

BAD:
- "Hi" (too vague)
- "IMPORTANT!!! READ NOW!!!" (spammy)
- " " (no subject = ignored)
```

---

## ✍️ HOW TO COMPOSE - STEP BY STEP

### Step 1: Open Gmail
```
agent-browser --cdp 9222 open https://mail.google.com
```

### Step 2: Click "Compose"
```
# Look for "+" or "Compose" button
agent-browser --cdp 9222 snapshot
# Find compose button
```

### Step 3: Fill In Recipient
```
# To field is a textbox
agent-browser --cdp 9222 type @<to_field> "recipient@example.com"
```

### Step 4: Add Subject
```
agent-browser --cdp 9222 type @<subject_field> "Your subject here"
```

### Step 5: Write Body
```
agent-browser --cdp 9222 type @<body_field> "Your email body"
```

### Step 6: Add Attachments (if needed)
```
# Look for "Attach files" or paperclip icon
agent-browser --cdp 9222 click @<attach_button>
```

### Step 7: Send
```
# Look for "Send" button
agent-browser --cdp 9222 click @<send_button>
```

---

## 📝 EMAIL TEMPLATES

### Introduction Email
```
Subject: Introduction - [Your Name/Project]

Hi [Name],

I came across [what you do/shared] and was impressed by [specific thing].

I'm [who you are] and I work on [what you do].

[Why you're reaching out - 1-2 sentences]

[What you're hoping for - meeting, collaboration, etc.]

Looking forward to hearing from you!

Best,
[Your name]
```

### Follow-Up Email
```
Subject: Following up - [Original subject]

Hi [Name],

Just wanted to follow up on my previous email about [topic].

[Quick reminder of what you sent/asked]

[Any new developments since]

Would love to hear your thoughts when you have a chance!

Best,
[Your name]
```

### Response to Question
```
Subject: Re: [Original subject]

Hi [Name],

Thanks for reaching out!

[Answer their question directly]

[Offer to help further if appropriate]

Best,
[Your name]
```

### Professional Request
```
Subject: [Clear action request]

Hi [Name],

[State what you need - be specific]

[Why you need it]

[Timeline if applicable]

[How to respond]

Thanks!
[Your name]
```

---

## 📖 HOW TO READ EMAILS

### Step 1: Open Inbox
```
agent-browser --cdp 9222 open https://mail.google.com/mail/u/0/#inbox
```

### Step 2: Find Email
```
# Emails are listed as links
agent-browser --cdp 9222 snapshot
# Look for email subjects
```

### Step 3: Click to Open
```
agent-browser --cdp 9222 click @<email_link>
```

### Step 4: Read Content
```
agent-browser --cdp 9222 snapshot
# View full email content
```

---

## ↩️ HOW TO REPLY

### Step 1: Open Email
```
agent-browser --cdp 9222 open the email
```

### Step 2: Find "Reply" Button
```
# Look for "Reply" or arrow icon
agent-browser --cdp 9222 click @<reply_button>
```

### Step 3: Reply in Compose Box
```
agent-browser --cdp 9222 type @<reply_field> "Your reply"
```

### Step 4: Send
```
agent-browser --cdp 9222 click @<send_button>
```

---

## 📋 HOW TO MANAGE LABELS/FOLDERS

### Create Label
```
Settings > Labels > Create new label
```

### Apply Label to Email
```
# Open email
# Click "Labels" button
# Select or create label
```

### Archive vs Delete
| Action | When |
|--------|------|
| **Archive** | Want to save but not act on |
| **Delete** | Spam or truly unwanted |
| **Star** | Important, need to follow up |

---

## 🔍 HOW TO SEARCH

### Search Operators
```
from:sender@example.com     # From specific sender
to:recipient@example.com     # To specific recipient
subject:keyword              # In subject line
label:labelname              # In specific label
after:2024/01/01             # After date
before:2024/12/31            # Before date
is:unread                    # Unread emails
is:starred                   # Starred emails
has:attachment               # Has attachments
"exact phrase"               # Exact phrase search
```

### Search Examples
```
from:github @anything
subject:"question"
is:unread label:important
after:2024/01/01 is:unread
```

---

## ⚙️ GMAIL SETTINGS TIPS

### Important Settings
- **Vacation responder** - Auto-reply when away
- **Signature** - Automatic signature
- **Filters** - Auto-label/forward
- **Keyboard shortcuts** - Enable for speed

### Filters to Consider
- Auto-star from important contacts
- Skip inbox for newsletters
- Auto-archive social notifications

---

## 🔧 DEBUGGING

### If can't send
- Check if you're logged in
- Check recipient email
- Check attachment size (25MB limit)
- Check spam folder

### If email not received
- Check sent folder
- Check spam/junk
- Verify correct recipient
- Check filters

### If stuck
- Reload page
- Clear cache
- Try incognito mode

---

## 📱 GMAIL MOBILE vs DESKTOP

| Desktop | Mobile |
|---------|--------|
| Full compose | Quick reply |
| Full search | Limited search |
| Keyboard | Touch |
| Multiple compose | One at a time |

---

## 🎯 ZARDUS'S EMAIL

- **Email:** zardus.ai@gmail.com
- **Access:** Via Chrome CDP (user's logged-in session)

---

## ✉️ EMAIL BEST PRACTICES

### DO:
- ✅ Use clear subject lines
- ✅ Get to the point quickly
- ✅ Proofread before sending
- ✅ Use professional greeting/sign-off
- ✅ BCC when mass emailing
- ✅ Reply within 24-48 hours

### DON'T:
- ❌ ALL CAPS
- ❌ Excessive exclamation points!!!
- ❌ Forward chain emails
- ❌ Send when angry
- ❌ Reply-all unless necessary
- ❌ Forget attachments (mention in body)

---

## 🔐 GMAIL + GOOGLE HUB

```
Gmail ===OAuth===> Twitter
        ===OAuth===> GitHub
        ===OAuth===> YouTube
        ===OAuth===> Discord
        ===OAuth===> Reddit
        ===OAuth===> Vercel
        ===OAuth===> Heroku
        ===OAuth===> Spotify
        ===OAuth===> [Many more]

Single login = Access to almost everything!
```

---

*Last updated: 2026-03-30*
*Protocol v1.0*
