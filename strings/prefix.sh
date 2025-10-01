#!/usr/bin/env bash

function prefix() {
  sed -i -e "s/^/\"/" "$1"
}
