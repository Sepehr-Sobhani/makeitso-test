#!/bin/bash
# Test deploy: a line every 5 seconds for 10 minutes, for testing the timeout
set -euo pipefail

echo "Deploying $COMMIT_SHA to $ENVIRONMENT"
for i in $(seq 1 120); do
  echo "step $i/120"
  sleep 5
done
echo "Done"
