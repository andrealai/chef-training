#!/usr/bin/env bash

# Script to force sync between Vagrant filesystem and host.
# Needed as there is some lag between the two

if hash vmtouch 2>/dev/null; then
    SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

    ROOT=${1:-${SCRIPT_DIR}}

    echo "Flushing buffers from ${ROOT}"

    vmtouch -eq ${ROOT}
fi

