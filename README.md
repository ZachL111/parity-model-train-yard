# parity-model-train-yard

`parity-model-train-yard` keeps a focused Haskell implementation around ml utilities. The project goal is to create a Haskell reference implementation for train workflows, centered on storage recovery, log and snapshot fixtures, and replay consistency checks.

## Reason For The Project

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Parity Model Train Yard Review Notes

Start with `window width` and `feature drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/parity-model-train-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `window width` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The added Haskell path is deliberately direct, with fixtures doing most of the explaining.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
