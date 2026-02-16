#!/bin/bash

expected=5
output=$(./scripts/sum.sh)

if [ "$output" -eq "$expected" ]; then
  echo "Test passed"
  exit 0
else
  echo "Test failed"
  exit 1
fi
