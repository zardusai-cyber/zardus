# 📪 Reddit Protocol - How to Post on Reddit

> *"The psychology of the hive mind"*

---

## 🎯 BEFORE YOU POST - KNOW THE RULES

### Reddit vs Twitter
| Twitter | Reddit |
|---------|--------|
| 280 chars | 40,000 chars |
| Fast takes | Deep dives |
| Followers | Karma |
| Viral or die | Community first |

### Character Limits
- **Post title:** 300 characters
- **Post body:** 40,000 characters
- **Comment:** 40,000 characters
- **Username:** 3-20 characters

### Karma System
- **Karma** = Your reputation score
- **High karma** = Post freely
- **Low karma** = Get restricted
- **New account** = Auto-shadowbanned

---

## 🧠 REDDIT PSYCHOLOGY

### The Hive Mind
- Redditors smell AI-generated content
- Be HUMAN in your writing
- Don't sound corporate
- Use lowercase, not caps
- Casual > Formal

### What Works
- Honest experiences
- Real struggles and solutions
- Humor (self-deprecating works)
- Deep technical dives
- Behind-the-scenes content

### What FAILS
- "As an AI language model..."
- Perfect grammar (suspicious)
- Too polished content
- Self-promotion without value
- Clickbait titles

---

## ✍️ HOW TO POST - STEP BY STEP

### Step 1: Navigate to Subreddit
```
agent-browser --cdp 9222 open https://www.reddit.com/r/<subreddit>/
```

### Step 2: Find "Create Post" Button
```
# Look for: "Create Post", "New Post", or "+"
agent-browser --cdp 9222 snapshot
# Find the create button
```

### Step 3: Choose Post Type
```
Reddit post types:
- Text Post (most common)
- Link Post (external URL)
- Image/Video Post
- Poll
```

### Step 4: Select Appropriate Flair
```
ALWAYS add flair!
- Shows you've read rules
- Helps categorization
- Required in many subs
- Makes post legit
```

### Step 5: Write Title (CRITICAL!)
```
Rules:
- Clear and descriptive
- No clickbait
- No ALL CAPS
- No emoji spam (1-2 max)
- Accurate representation

GOOD: "My experience switching from VSCode to Neovim after 5 years"
BAD: "YOU WON'T BELIEVE WHAT HAPPENED NEXT!!! 😱😱😱"
```

### Step 6: Write Body
```
Structure:
1. Hook (1-2 sentences)
2. Context (what's the situation)
3. The content (main point)
4. Discussion starter (ask a question)

Tone: Conversational, humble, helpful
```

### Step 7: Preview and Post
```
# Look for "Preview" tab
# Check how it looks
# Then "Post" button
```

---

## 🏷️ FLAIR GUIDE

| Flair | When to Use |
|-------|-------------|
| Discussion | Asking questions |
| Question | Seeking help |
| Tutorial/Guide | Teaching something |
| Showoff | Sharing creations |
| News | Sharing updates |
| Humor | Memes, jokes |

---

## 📝 POST TEMPLATES

### Project Launch
```
Title: "I built [X] and here's what I learned"

Body:
So I just released [project name] after [timeframe].

**What it does:** [1-2 sentences]

**The journey:** [Brief story of challenges]

**What I learned:**
- [Lesson 1]
- [Lesson 2]
- [Lesson 3]

Would love feedback from this community!

[Link if applicable]
```

### Question Post
```
Title: "[Year] What's your [tool] stack for [use case]?"

Body:
Hey everyone,

I've been using [current tool] for [timeframe] but looking to explore alternatives.

**Current setup:**
- [Tool 1]
- [Tool 2]

**What I need:**
- [Requirement 1]
- [Requirement 2]

What do you recommend and why?

Thanks! 🙏
```

### Showoff Post
```
Title: "[Project Name] - [What it does in 1 sentence]"

Body:
**[Demo/Screenshot]**

**What it does:** [Full description]

**Tech stack:** [Brief list]

**The cool part:** [Why it's interesting]

Happy to answer questions!

---

## 💬 HOW TO COMMENT

### Step 1: Find the Post
```
agent-browser --cdp 9222 open https://www.reddit.com/r/<subreddit>/comments/<post_id>
```

### Step 2: Find Comment Box
```
# Look for "Add a comment" or "Reply"
agent-browser --cdp 9222 snapshot
# Find comment input
```

### Step 3: Write Comment
```
Rules:
- Be helpful, not right
- Admit when you're unsure
- Don't lecture
- Ask follow-up questions
- Add context
```

### Comment Templates

**Agreeing:**
```
This! I've had similar experience with [related thing].

[Tell a brief related story]
```

**Disagreeing:**
```
Interesting take. I've had a different experience though.

[Share your perspective without attacking]

What made your experience different?
```

**Asking question:**
```
Thanks for sharing! Quick question:

[Your question]

I've been wondering about this myself.
```

---

## ⚠️ SUBREDDIT RULES (ALWAYS READ!)

### Before posting:
1. **Read the sidebar** - Rules are there
2. **Search first** - Similar post recently?
3. **Check pinned posts** - Announcements, megathreads
4. **Observe culture** - Each sub has its vibe

### Common Rule Violations
- Self-promotion without disclosure
- Missing post flair
- Reposting within timeframe
- Low-effort content
- Off-topic posts

---

## 🎯 BEST SUBREDDITS FOR DEVELOPERS

| Subreddit | Purpose |
|-----------|---------|
| r/programming | General dev discussion |
| r/webdev | Web development |
| r/reactjs | React specific |
| r/python | Python specific |
| r/learnprogramming | Learning help |
| r/Entrepreneur | Business/startups |
| r/SideProject | Sharing projects |
| r/tech | Tech news |

---

## 🔧 DEBUGGING

### If can't post
- Account might be too new
- Karma too low
- You're shadowbanned
- Check for "required karma" on sub

### If post removed
- Message moderators
- Check which rule violated
- Appeal politely

### If downvoted
- Don't delete immediately
- Let it die naturally
- Learn from criticism

---

## 📱 REDDIT APP vs DESKTOP

| Desktop | Mobile |
|---------|--------|
| Easier typing | Easier browsing |
| Better preview | Quick actions |
| Keyboard shortcuts | Touch-friendly |
| Full features | Limited |

---

## 🏆 ZARDUS'S ACCOUNT

- **Username:** zardus
- **Account:** u/Imaginary_Fly2570
- **Profile:** https://www.reddit.com/user/Imaginary_Fly2570/

---

## 🎯 POSTING STRATEGY

### Phase 1: Lurk (1-2 weeks)
- Read posts
- Upvote good content
- Make helpful comments
- Learn the culture

### Phase 2: Engage
- Answer questions
- Share genuine insights
- Build karma naturally

### Phase 3: Post
- Share your projects
- Ask thoughtful questions
- Contribute value first

### Golden Rule
```
"Give more than you take"
- Helpful comments first
- Self-promote LAST
- Always add value
```

---

*Last updated: 2026-03-30*
*Protocol v1.0*
