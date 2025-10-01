# script-utils

A collection of lightweight bash utilities for command line programs. Each utility is designed as a reusable function that can be sourced into your scripts.

## Installation

Add as a git submodule:
```bash
git submodule add https://github.com/username/script-utils.git utils
```

## Usage

Source the utilities you need:
```bash
# shellcheck source=/dev/null
source 'utils/datetime/timestamp.sh'
source 'utils/strings/colors.sh'
```

## Available Utilities

### DateTime
- **timestamp.sh** - Get current Unix timestamp
  ```bash
  timestamp  # Returns: 1640995200
  ```

### Error Handling
- **fatal.sh** - Print error message and exit
  ```bash
  fatal "Something went wrong"  # Prints red error and exits
  ```

### File System
- **script_location.sh** - Get directory of current script
  ```bash
  get_script_location  # Returns: /path/to/script/directory
  ```

### Progress
- **progress_bar.sh** - Display progress bar
  ```bash
  progress_bar 50     # Shows: 50% [████████████░░░░░░░░░░░░░]
  progress_bar 75 30  # Custom width: 75% [██████████████████████░░░░░░░░]
  ```

### Strings
- **colors.sh** - Colored text output functions
  ```bash
  red "Error message"      # Red text
  green "Success message"  # Green text
  yellow "Warning"         # Yellow text
  blue "Info"              # Blue text
  ```

- **lowercase.sh** - Convert text to lowercase
  ```bash
  lowercase "HELLO"  # "hello"
  ```

- **uppercase.sh** - Convert text to uppercase
  ```bash
  uppercase "hello"  # "HELLO"
  ```

- **prefix.sh** - Add prefix to each line in file
  ```bash
  prefix file.txt  # Adds " to start of each line
  ```

- **suffix.sh** - Add suffix to each line in file
  ```bash
  suffix file.txt  # Adds " to end of each line
  ```

## License

See LICENSE.txt for details.