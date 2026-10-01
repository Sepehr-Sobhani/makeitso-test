# makeitso-test

A harmless repo for testing makeitso deploys. `deploy.sh` only prints and sleeps; it doesn't deploy anything.

Each commit behaves differently, so deploy the one you want to test:

- "Deploy succeeds": prints 20 steps, one a second, then exits 0
- "Deploy fails": prints 10 steps, then exits 1
- "Slow deploy": prints a step every 5 seconds for 10 minutes (for testing the timeout)
- "Add engage.yaml with a review checklist": the quick 20-step deploy again, plus an `engage.yaml`
  with a three-item checklist (all items must be ticked before Deploy), a 300s timeout and
  `Dependabot` as an allowed failure

## CI

`.github/workflows/ci.yml` runs on every push and adds three checks to each commit:

- `build` always passes
- `tests` fails about half the time, at random: a failed commit is blocked in makeitso unless you use emergency mode
- `lint` always fails, but `engage.yaml` lists it in `ci.allow_failures`, so it shows red without blocking

Rerun the workflow from the Actions tab to get a new random result for `tests`.
