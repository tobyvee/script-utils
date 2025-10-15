#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
}

@test "Returns a Unix timestamp as string in the correct format" {
  source "$SCRIPT_DIR/timestamp.sh"
  result=$(timestamp)
  [ "$?" -eq 0 ]
  [[ "$result" =~ ^[0-9]{10}$ ]]
}