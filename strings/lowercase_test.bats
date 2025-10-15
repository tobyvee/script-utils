#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
}

@test "converts uppercase to lowercase" {
  source "$SCRIPT_DIR/lowercase.sh"
  run lowercase "HELLO"
  [ "$status" -eq 0 ]
  [ "$output" = "hello" ]
}

@test "handles mixed case" {
  source "$SCRIPT_DIR/lowercase.sh"
  run lowercase "HeLLo WoRLd"
  [ "$status" -eq 0 ]
  [ "$output" = "hello world" ]
}