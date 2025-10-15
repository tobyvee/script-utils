#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
}

@test "Exits with code 1" {
  source "$SCRIPT_DIR/fatal.sh"
  run fatal "Test fatal"
  [ "$status" -eq 1 ]
}

@test "Prints error message" {
  source "$SCRIPT_DIR/fatal.sh"
  run fatal "Test fatal"
  [[ "$output" =~ "Test fatal" ]]
}