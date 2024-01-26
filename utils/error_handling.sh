#!/bin/bash

# Function to set up error handling
setUpErrorHandling() {
  trap 'echo ">>> An error occurred in $packageName installation." >&2; if [[ "$?" -eq 0 ]]; then
    echo ">>> Continuing..." >&2
  else
    echo ">>> Fatal error occurred. Exiting..." >&2
    exit 1
  fi' ERR
}

