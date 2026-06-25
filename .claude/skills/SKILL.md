name: pr-review
description: Review a pull request diff against the Implementation Plan and report findings by severity.
---

# PR review

## Inputs
- the diff or PR number
- the Implementation Plan

## Steps
1. Read the diff against the plan
2. Delegate the security pass to the pr-reviewer subagent
3. Flag scope drift and missing tests
4. Rank findings by severity

## Output
A findings-first review with severity, evidence, and a recommended fix.