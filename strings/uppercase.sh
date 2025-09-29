#!/bin/bash

function uppercase {
  echo "$1" | tr \[:lower:\] \[:upper:\] | pbcopy
}

uppercase "$#"
