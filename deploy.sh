#!/bin/bash
# Test deploy: prints 10 lines, then fails
set -euo pipefail

echo "Deploying $COMMIT_SHA to $ENVIRONMENT"
for i in $(seq 1 10); do
  echo "step $i/20"
  sleep 1
done
echo "Something went wrong" >&2
exit 1
