#!/usr/bin/env bash

set -xe

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

touch -d "2025-01-00T00:00:00" "$SCRIPT_DIR/version_a/example/script.py" 
touch -d "2025-01-00T00:00:00" "$SCRIPT_DIR/version_b/example/script.py"

"$SCRIPT_DIR/version_a/example/run.sh"
"$SCRIPT_DIR/version_b/example/run.sh"
