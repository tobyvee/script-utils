#!/usr/bin/env bash

function uppercase {
  echo "$1" | tr \[:lower:\] \[:upper:\]
}

uppercase "$#"
