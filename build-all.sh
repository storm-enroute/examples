#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Please specify the SBT command as the first argument. Exiting."
  exit 1
fi

CURR_DIR=`pwd`
SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
SBT_CMD="${1}"

function test() {
  declare path=$1
  declare commands=$2
  echo "Building $path with commands: $commands"
  cd $SCRIPT_PATH/$path
  $SBT_CMD $commands
}

test mecha-super-repo \
  "\"mecha-track examples-core-utils ; mecha-track examples-application ; compile\""

cd $CURR_DIR
