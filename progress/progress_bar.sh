#!/usr/bin/env bash

# Example usage in a script
# echo "Processing files..."
# for i in {0..100}; do
#     progress_bar $i
#     sleep 0.05
# done
# echo -e "\nDone!"

# Reusable progress bar function
progress_bar() {
    local percent=$1
    local width=${2:-50}
    local fill_char=${3:-"█"}
    local empty_char=${4:-"░"}
    
    local filled=$((percent * width / 100))
    local empty=$((width - filled))
    
    printf "\r%3d%% [" $percent
    printf "%*s" $filled | tr ' ' "$fill_char"
    printf "%*s" $empty | tr ' ' "$empty_char"
    printf "]"
}