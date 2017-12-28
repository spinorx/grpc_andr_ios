#!/bin/bash

SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}")" && pwd )"/
ROOT_DIR=`dirname ${SCRIPT_DIR}`/

ARG=$1

if [[ "${ARG}" != "opt" ]] && [[ "${ARG}" != "dbg" ]]
then
  echo unknown option.  Use dbg or opt
  exit
fi

bazel build -c $1 --config ios //ios:GreeterClient
if [[ "$?" != "0" ]]
then
  exit
fi

FX_OUT=${ROOT_DIR}bazel-out/ios_fx_${ARG}/
rm -Rf ${FX_OUT}
mkdir -p ${FX_OUT}

unzip ${ROOT_DIR}bazel-bin/ios/GreeterClient.zip -d ${FX_OUT}
