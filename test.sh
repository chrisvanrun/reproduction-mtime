#!/usr/bin/env bash

set -xe

A_DIR=version_a/example/
B_DIR=version_b/example/

touch -t "202501010000" "$A_DIR/script.py"
touch -t "202501010000" "$B_DIR/script.py" 

docker build --no-cache --tag test-a $A_DIR
docker run --rm test-a

docker build --no-cache --tag test-b $B_DIR
docker run --rm test-b
