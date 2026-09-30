#!/bin/bash
# Test deploy: prints a line a second, deploys nothing
set -euo pipefail

echo "Deploying $COMMIT_SHA to $ENVIRONMENT"
for i in $(seq 1 20); do
  echo "step $i/20"
  sleep 1
done
echo "Done"
