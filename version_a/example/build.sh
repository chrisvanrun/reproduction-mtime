set -x

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

docker build --tag test-a $SCRIPT_DIR