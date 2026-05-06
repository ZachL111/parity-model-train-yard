# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 240, lane `ship`
- `stress`: `window width`, score 254, lane `ship`
- `edge`: `metric stability`, score 165, lane `ship`
- `recovery`: `explainability`, score 236, lane `ship`
- `stale`: `feature drift`, score 152, lane `ship`

## Note

A future change should add new cases before it changes the scoring rule.
