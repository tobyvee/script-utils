#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
  source "$SCRIPT_DIR/colors.sh"
}

@test "red outputs colored text" {
  run red "test"
  [ "$status" -eq 0 ]
  [[ "$output" =~ $'\033[91m'test$'\033[0m' ]]
}

@test "green outputs colored text" {
  run green "test"
  [ "$status" -eq 0 ]
  [[ "$output" =~ $'\033[92m'test$'\033[0m' ]]
}

@test "blue outputs colored text" {
  run blue "test"
  [ "$status" -eq 0 ]
  [[ "$output" =~ $'\033[94m'test$'\033[0m' ]]
}

@test "yellow outputs colored text" {
  run yellow "test"
  [ "$status" -eq 0 ]
  [[ "$output" =~ $'\033[93m'test$'\033[0m' ]]
}