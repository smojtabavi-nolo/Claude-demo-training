# commands/review-pr.md
# /review-pr runs this prompt — it stitches the plugin's parts together.
Run the pr-review skill on the staged diff, and delegate the deep security pass to
the pr-reviewer subagent (it runs the check-diff tool and the github MCP server).

Report in this shape:
1. Highest-risk change and why
2. Security or data-loss concerns from the pr-reviewer subagent
3. Tests that should exist but do not
4. Suggested follow-ups, smallest first

Do not rewrite the code; report findings only.