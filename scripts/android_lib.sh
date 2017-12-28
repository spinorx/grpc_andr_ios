#!/bin/bash

SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"/
ROOT_DIR=`dirname ${SCRIPT_DIR}`/

ARG=$1

if [[ "${ARG}" != "opt" ]] && [[ "${ARG}" != "dbg" ]]
then
  echo unknown option.  Use dbg or opt
  exit
fi

bazel build -c $1 --config android //android:GreeterClientBuildBin
if [[ "$?" != "0" ]]
then
  exit
fi


BAZEL_ANDR_OUT=${ROOT_DIR}bazel-out/android-arm-linux-androideabi-clang3.8-v7a-libcpp-${ARG}/
LIB_OUT=${ROOT_DIR}bazel-out/android_lib_${ARG}/
rm -Rf ${LIB_OUT}
mkdir -p ${LIB_OUT}
mkdir -p ${LIB_OUT}armeabi-v7a/

cp ${BAZEL_ANDR_OUT}bin/android/libGreeterClient.jar ${LIB_OUT}
cp ${BAZEL_ANDR_OUT}bin/android/libGreeterClient.so ${LIB_OUT}armeabi-v7a/

