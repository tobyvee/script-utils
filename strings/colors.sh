#!/usr/bin/env bash

# colors.sh
#
# This script defines a set functions used to change the color of text output
# Source this file to use in other scripts.
# eg.
# source colors.sh
# red "This is red text"

RED='\033[91m'
YELLOW='\033[93m'
GREEN='\033[92m'
BLUE='\033[94m'
MAGENTA='\033[95m'
CYAN='\033[96m'
WHITE='\033[97m'
RESET='\033[0m'

function red {
  echo -e "${RED}$1${RESET}"
}

function yellow {
  echo -e "${YELLOW}$1${RESET}"
}

function green {
  echo -e "${GREEN}$1${RESET}"
}

function blue {
  echo -e "${BLUE}$1${RESET}"
}

function magenta {
  echo -e "${MAGENTA}$1${RESET}"
}

function cyan {
  echo -e "${CYAN}$1${RESET}"
}

function white {
  echo -e "${WHITE}$1${RESET}"
}
