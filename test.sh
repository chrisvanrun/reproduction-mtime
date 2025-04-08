#!/usr/bin/env bash

set -xe

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

touch -t "202501010000.00" "$SCRIPT_DIR/version_a/example/script.py" 
touch -t "202501010000.00" "$SCRIPT_DIR/version_b/example/script.py"

"$SCRIPT_DIR/version_a/example/run.sh"
"$SCRIPT_DIR/version_b/example/run.sh"
