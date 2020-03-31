#!/bin/sh
# set sh strict mode
set -o errexit
set -o nounset
IFS=$(printf '\n\t')

cd /home/scu/osparc_python_runner

echo "starting service as"
echo   User    : "$(id "$(whoami)")"
echo   Workdir : "$(pwd)"
echo "..."
echo
# ----------------------------------------------------------------
# This script shall be modified according to the needs in order to run the service
# The inputs defined in ${INPUT_FOLDER}/inputs.json are available as env variables by their key in capital letters
# For example: input_1 -> $INPUT_1

python3 main.py setup
/bin/sh main.sh
python3 main.py teardown