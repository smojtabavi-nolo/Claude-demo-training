# ClosedLoop.AI — Claude Code One-Day Intensive

Everything you need for the one-day, hands-on Claude Code training. The day teaches one repeatable operating model: **craft the right Claude Code primitives, plan and manage context, recover intent with evidence, review and verify against the plan, and design a workflow you can reuse.**

> This repo is scoped to the **one-day course**. One **extended (bonus) lab** from the longer program is kept and clearly marked as optional.

## Start here

1. **Pre-work (required):** complete [Lab 00 — setup](labs/00-no-speed-limits-setup-local-stack-bootstrap/LAB.md) and the [pre-work checklist](docs/ONE-DAY-PREWORK-CHECKLIST.md) before the live session.
2. **Agenda:** [docs/ONE-DAY-LIVE-AGENDA.md](docs/ONE-DAY-LIVE-AGENDA.md)
3. **Workbook (in-class):** open [workbook/index.html](workbook/index.html) in a browser — interactive, with editable examples and progress tracking.

## The day, module by module

The live day runs from the **workbook** and the **slides**. The labs below are **optional, self-paced enrichment** — hands-on practice for each module if you like running ahead. They take longer than the live session allows, so they are not required to keep up.

| Module | Topic | Enrichment lab |
| --- | --- | --- |
| 1 | Build Claude Code primitives | [Lab 01](labs/01-know-the-machine-claude-code-primitives/LAB.md) |
| 2 | Planning & context management | [Lab 02](labs/02-from-mess-to-mission-creating-plans-for-execution/LAB.md) |
| 3 | Intent recovery & dynamic evidence | [Lab 03](labs/03-commit-archaeology-find-the-why-before-the-what/LAB.md) · [Lab 04](labs/04-give-claude-eyes-and-ears-connecting-dynamic-data-sources/LAB.md) |
| 4 | Review, test & verify | [Lab 05](labs/05-review-test-and-verify/LAB.md) |
| 5 | Workflow design | [Lab 06](labs/06-agent-orchestra-design-a-multi-agent-delivery-workflow/LAB.md) |

The artifacts you build use ClosedLoop's product nomenclature (Implementation Plan, Explore findings, Request Changes, Review, Workflow), so the habits transfer to app.closedloop.ai even if you never use the product.

## What's in here

```text
workbook/   # the interactive in-class workbook (open index.html)
docs/       # one-day agenda, pre-work checklist, and reference docs
slides/     # one-day presentation guide + ready-made demo artifacts (good vs anti-pattern)
labs/       # Lab 00 setup (required pre-work) + optional enrichment labs (01-06) + a bonus capstone (07)
templates/  # reusable primitives: command, skill, subagent, hook, tool, MCP server, plugin manifest, verification gate
examples/   # demo-app the labs run against
scripts/    # demo test runner
resources/  # video links
```

## Reference

- [Primitives: plugins, skills, commands & models](docs/PLUGINS-SKILLS-COMMANDS-AND-MODELS.md)
- [Tool & permission examples](docs/TOOL-PERMISSIONS-EXAMPLES.md)
- [Using Claude in existing workflows](docs/WORKFLOW-INTEGRATION.md)
- [Lab index](labs/README.md) · [Slides](slides/README.md)

## Extended (bonus)

Beyond the one-day path, [Lab 07 — Build Your Agentic Operating System](labs/07-build-your-agentic-operating-system/LAB.md) is an optional capstone from the longer program: it makes the Lab 06 workflow observable, reviewable, and self-improving. Not required for the one-day course.

## Install

```bash
git clone https://github.com/closedloop-ai/claude-code-expert-training.git
cd claude-code-expert-training/examples/demo-app
python -m pytest && python src/order_totals.py
```

Then open the first lab: [labs/00-no-speed-limits-setup-local-stack-bootstrap/LAB.md](labs/00-no-speed-limits-setup-local-stack-bootstrap/LAB.md).
