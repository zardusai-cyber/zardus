# Browser Automation Reference

## CDP Connection

**Linux:**
```bash
/opt/brave-browser/brave-browser --no-sandbox --remote-debugging-port=9222
```

**Windows:**
```
"C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --remote-debugging-port=9222
```

**Connect:**
```bash
agent-browser --cdp 9222 open https://github.com
agent-browser --cdp 9222 screenshot
```

## OAuth Hub
```
Google (zardus.ai@gmail.com) -- OAuth --> Twitter (@Zardus_AI)
    |                                       |
    |-- OAuth --> GitHub (zardusai-cyber) -- OAuth --> Vercel
    |
    -- OAuth --> Reddit (u/Imaginary_Fly2570)
```

## Active Plugin
- @different-ai/opencode-browser: Browser automation via CDP
