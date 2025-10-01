#!/usr/bin/env bash

function suffix() {
  sed -i -e "s/$/\"/" "$1"
}
