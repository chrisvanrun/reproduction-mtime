set -x

SCRIPT_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

source $SCRIPT_DIR/build.sh

docker run --rm test-b