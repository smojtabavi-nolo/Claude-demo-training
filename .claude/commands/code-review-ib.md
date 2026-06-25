Orchestrated review (shape, not syntax):

Use multiple agents concurrently to code review this codebase by:
  fan out  →  [correctness] [security] [scope] [regression] [tests]   one lens each, in parallel
  collect  →  merge and dedupe the raw findings
  verify   →  for each finding, spawn a skeptic that tries to refute it
  keep     →  only the findings the skeptic could not refute
  report   →  severity-ranked, each with the evidence that survived