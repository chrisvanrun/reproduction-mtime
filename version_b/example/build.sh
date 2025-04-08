set -x

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

docker build --no-cache --tag test-b $SCRIPT_DIR