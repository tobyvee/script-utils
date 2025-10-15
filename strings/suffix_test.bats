#!/usr/bin/env bats

setup() {
  export SCRIPT_DIR
  SCRIPT_DIR="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)"
  export BATS_TMPDIR
  BATS_TMPDIR="$(mktemp -d)"
}

teardown() {
  rm -rf "$BATS_TMPDIR"
}

@test "adds suffix to file lines" {
  source "$SCRIPT_DIR/suffix.sh"
  echo -e "line1\nline2" > "$BATS_TMPDIR/test.txt"
  run suffix "$BATS_TMPDIR/test.txt"
  [ "$status" -eq 0 ]
  [ "$(cat "$BATS_TMPDIR/test.txt")" = $'line1"\nline2"' ]
}