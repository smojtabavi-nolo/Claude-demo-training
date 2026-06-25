# Implementation Plan

## Goal
Implement refresh token rotation without changing the existing login response contract.

## Known facts
- JWT validation happens in src/auth/middleware.ts.
- Session persistence is implemented in src/auth/session-store.ts.
- Existing tests cover login success and expired access tokens.

## Assumptions to verify
- Old refresh tokens are not currently invalidated after rotation.
- Token reuse should be treated as suspicious but not immediately lock the account.

## Open questions
- Should reuse detection emit an audit event?
- Is token family tracking already present in the database schema?

## Context map
- Auth middleware: request validation and session lookup
- Session store: token persistence and expiration
- Test suite: integration tests under tests/auth/

## Work packages
1. Verify current token rotation behavior.
2. Add invalidation logic or token-family tracking.
3. Extend integration tests for old-token reuse.
4. Produce Review.

## Acceptance criteria
- New refresh token is issued on rotation.
- Previous refresh token cannot be reused.
- Existing login response shape is unchanged.
- Tests demonstrate success, expiration, and reuse behavior.

## Context map
### Primary:
- src/auth/middleware.ts: request authentication boundary
- src/auth/session-store.ts: refresh token persistence
- db/schema.sql: session and token tables
- tests/auth/refresh-token.test.ts: integration behavior

### Secondary:
- docs/security/auth-model.md: intended auth posture
- .claude/rules/api-security.md: project-specific security rules
- recent PRs touching auth middleware: intent and regression context

Do not load the /node_modules folder or read it ever - it is not part of my codebase.