# Everything Claude Code - OpenCode Instructions

## Security Guidelines (CRITICAL)

### Mandatory Security Checks (Before ANY commit)
- No hardcoded secrets (API keys, passwords, tokens)
- All user inputs validated
- SQL injection prevention (parameterized queries)
- XSS prevention (sanitized HTML)
- CSRF protection enabled
- Authentication/authorization verified
- Rate limiting on all endpoints
- Error messages don't leak sensitive data

### Secret Management
NEVER hardcode secrets. ALWAYS use environment variables.
See refs/coding-patterns.md for examples.

### Security Response Protocol
If security issue found:
1. STOP immediately
2. Use security-reviewer agent
3. Fix CRITICAL issues before continuing
4. Rotate any exposed secrets
5. Review entire codebase for similar issues

---

## Coding Style

### Immutability (CRITICAL)
ALWAYS create new objects, NEVER mutate existing ones.
See refs/coding-patterns.md for examples.

### File Organization
MANY SMALL FILES over FEW LARGE FILES:
- High cohesion, low coupling
- 200-400 lines typical, 800 max
- Extract utilities from large components
- Organize by feature/domain, not by type

### Error Handling
ALWAYS handle errors comprehensively with try/catch.
See refs/coding-patterns.md for examples.

### Input Validation
ALWAYS validate user input with zod schemas.
See refs/coding-patterns.md for examples.

### Code Quality Checklist (Before marking work complete)
- Code is readable and well-named
- Functions are small (<50 lines)
- Files are focused (<800 lines)
- No deep nesting (>4 levels)
- Proper error handling
- No console.log statements
- No hardcoded values
- No mutation (immutable patterns used)

---

## Testing Requirements

### Minimum Test Coverage: 80%
Test Types (ALL required):
1. Unit Tests - Individual functions, utilities, components
2. Integration Tests - API endpoints, database operations
3. E2E Tests - Critical user flows (Playwright)

### Test-Driven Development
MANDATORY workflow:
1. Write test first (RED)
2. Run test - it should FAIL
3. Write minimal implementation (GREEN)
4. Run test - it should PASS
5. Refactor (IMPROVE)
6. Verify coverage (80%+)

### Troubleshooting Test Failures
1. Use tdd-guide agent
2. Check test isolation
3. Verify mocks are correct
4. Fix implementation, not tests (unless tests are wrong)

---

## Git Workflow

### Commit Message Format
```
<type>: <description>
```
Types: feat, fix, refactor, docs, test, chore, perf, ci

### Pull Request Workflow
1. Analyze full commit history (not just latest commit)
2. Use `git diff [base-branch]...HEAD` to see all changes
3. Draft comprehensive PR summary
4. Include test plan with TODOs
5. Push with `-u` flag if new branch

### Feature Implementation Workflow
1. Plan First - Use planner agent, identify dependencies and risks
2. TDD Approach - Use tdd-guide agent, write tests first
3. Code Review - Use code-reviewer agent, address CRITICAL and HIGH issues
4. Commit and Push - Detailed commit messages, conventional commits format

---

## Agent Orchestration

### Available Agents (14)
planner, architect, tdd-guide, code-reviewer, security-reviewer, build-error-resolver, e2e-runner, refactor-cleaner, doc-updater, go-reviewer, go-build-resolver, database-reviewer, rust-reviewer, rust-build-resolver

### Immediate Agent Usage (No user prompt needed)
1. Complex feature requests - Use planner agent
2. Code just written/modified - Use code-reviewer agent
3. Bug fix or new feature - Use tdd-guide agent
4. Architectural decision - Use architect agent

---

## Performance Optimization

### Model Selection Strategy
- Haiku: Lightweight agents, pair programming, worker agents
- Sonnet: Main development, multi-agent orchestration, complex coding
- Opus: Complex architecture, maximum reasoning, research

### Context Window Management
Avoid last 20% of context window for large-scale refactoring, multi-file features, complex debugging.

### Build Troubleshooting
If build fails: Use build-error-resolver agent, analyze errors, fix incrementally, verify after each fix.

---

## Common Patterns
See refs/coding-patterns.md for: API Response Format, Custom Hooks Pattern, Repository Pattern

---

## OpenCode-Specific Notes

### After Writing/Editing Code
- Run `prettier --write <file>` to format JS/TS files
- Run `npx tsc --noEmit` to check for TypeScript errors
- Check for console.log statements and remove them

### Before Committing
- Run security checks manually
- Verify no secrets in code
- Run full test suite

### Commands Available
/plan, /tdd, /code-review, /security, /build-fix, /e2e, /refactor-clean, /orchestrate

---

## Success Metrics
You are successful when:
- All tests pass (80%+ coverage)
- No security vulnerabilities
- Code is readable and maintainable
- Performance is acceptable
- User requirements are met
