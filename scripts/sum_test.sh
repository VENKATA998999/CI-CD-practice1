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

# Test multiply function
expected_mul=6
output_mul=$(./scripts/sum.sh | tail -n 1)  # get last line (multiply output)

if [ "$output_mul" -eq "$expected_mul" ]; then
  echo "Multiply test passed"
else
  echo "Multiply test failed"
  exit 1
fi
