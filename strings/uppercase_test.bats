#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
}

@test "converts lowercase to uppercase" {
  source "$SCRIPT_DIR/uppercase.sh"
  run uppercase "hello"
  [ "$status" -eq 0 ]
  [ "$output" = "HELLO" ]
}

@test "handles mixed case" {
  source "$SCRIPT_DIR/uppercase.sh"
  run uppercase "HeLLo WoRLd"
  [ "$status" -eq 0 ]
  [ "$output" = "HELLO WORLD" ]
}