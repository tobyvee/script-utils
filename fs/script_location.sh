#!/bin/bash

function get_script_location {
  dirname -- "${BASH_SOURCE[0]}"
}

get_script_location
