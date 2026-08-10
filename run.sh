#!/usr/bin/env bash

set -o errexit
set -o pipefail

# -----------------------------------------------------------------------------
# Helper functions start with _ and aren't listed in this script's help menu.
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------

function dev {
    exec python3 -m http.server -b 127.0.0.1 8000 -d pub
}

# -----------------------------------------------------------------------------

function help {
  printf "%s <task> [args]\n\nTasks:\n" "${0}"

  compgen -A function | grep -v "^_" | cat -n

  printf "\nExtended help:\n  Each task has comments for general usage\n"
}

TIMEFORMAT=$'\nTask completed in %3lR'
time "${@:-help}"
