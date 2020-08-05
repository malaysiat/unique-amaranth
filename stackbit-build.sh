#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/5f2b09ac134a0400165f57b1/webhook/build/ssgbuild > /dev/null

next build && next export

curl -s -X POST https://api.stackbit.com/project/5f2b09ac134a0400165f57b1/webhook/build/publish > /dev/null