#!/usr/bin/env bash

# shellcheck source=/dev/null
source "../strings/colors.sh"

fatal() {
  red FATAL: "$1"
  exit 1
}
