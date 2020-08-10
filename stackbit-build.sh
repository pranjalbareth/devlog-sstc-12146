#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5f31214640a5d7001c92e10e/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://api.stackbit.com/project/5f31214640a5d7001c92e10e/webhook/build/publish > /dev/null