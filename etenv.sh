#!/usr/bin/env sh

# Stores the current folder
etenv_dir="$(cd "$(dirname $0)";pwd)"
# Shell Script library dependencies repository
etenv_workshop_repo="https://github.com/Mosai/workshop.git"
# Where to keep the workshop dependency
etenv_workshop_dir="${etenv_dir}/src/workshop"

# Load etenv source
. "${etenv_dir}/src/etenv.sh"
. "${etenv_dir}/src/etenv_ssh.sh"

# Check the dependencies if any argument is passed
test "${1:-}" = "--help" && etenv_option_help
test "${1:-}" != "" && etenv_command_checkdeps

. "${etenv_workshop_dir}/lib/workshop/common.sh" >/dev/null 2>&1
. "${etenv_workshop_dir}/lib/workshop/dispatch.sh" >/dev/null 2>&1

# Adds workshop tools to the current script path
export PATH="${PATH}:${etenv_workshop_dir}/bin"

# Dispatch calls
etenv "${@:-}"
