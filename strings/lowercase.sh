#!/bin/bash

function lowercase {
  echo "$1" | tr \[:upper:\] \[:lower:\] | pbcopy
}

lowercase "$#"
