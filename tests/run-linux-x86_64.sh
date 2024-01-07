#!/bin/sh

arch=x86_64

gum_tests=$(dirname "$0")
cd "$gum_tests/../../build/tmp_thin-linux-$arch/telco-gum" || exit 1
. ../../telco_thin-env-linux-x86_64.rc
ninja || exit 1
tests/gum-tests "$@"
