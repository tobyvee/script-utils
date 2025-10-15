#!/usr/bin/env bash

function lowercase {
  echo "$1" | tr \[:upper:\] \[:lower:\]
}
