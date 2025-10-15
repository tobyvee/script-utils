#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
}

@test "Returns script directory" {
  source "$SCRIPT_DIR/script_location.sh"
  run get_script_location
  [ "$status" -eq 0 ]
  [[ "$output" == */fs ]]
}