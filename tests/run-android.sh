#!/bin/sh

arch=$1
apex_libdirs=$2

remote_prefix=/data/local/tmp/telco-tests-$arch

gum_tests=$(dirname "$0")

set -e
cd "$gum_tests/../.."
. build/telco-env-android-$arch.rc
set -x
cd build/tmp-android-$arch/telco-gum
ninja
cd tests
adb shell "mkdir $remote_prefix 2>/dev/null || true"
adb push gum-tests data $remote_prefix
adb shell "LD_LIBRARY_PATH='$apex_libdirs' $remote_prefix/gum-tests $@"
