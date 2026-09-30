# makeitso-test

A harmless repo for testing makeitso deploys. `deploy.sh` only prints and sleeps; it doesn't deploy anything.

Each commit behaves differently, so deploy the one you want to test:

- "Deploy succeeds": prints 20 steps, one a second, then exits 0
- "Deploy fails": prints 10 steps, then exits 1
- "Slow deploy": prints a step every 5 seconds for 10 minutes (for testing the timeout)
