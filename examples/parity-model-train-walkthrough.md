# Parity Model Train Yard Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 240 | ship |
| stress | window width | 254 | ship |
| edge | metric stability | 165 | ship |
| recovery | explainability | 236 | ship |
| stale | feature drift | 152 | ship |

Start with `stress` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around window width and explainability.
