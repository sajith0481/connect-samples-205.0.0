#!/bin/bash

set -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

export CARB_APP_PATH=${SCRIPT_DIR}/_build/linux-x86_64/release
export PYTHONHOME=${CARB_APP_PATH}/python-runtime

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${PYTHONHOME}/lib:${CARB_APP_PATH}

echo Running script in ${SCRIPT_DIR}
pushd "$SCRIPT_DIR" > /dev/null
"${CARB_APP_PATH}/HelloWorld" "$@"
popd > /dev/null
