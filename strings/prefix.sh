#!/bin/bash

function prefix() {
  sed -i -e "s/^/\"/" "$1"
}
