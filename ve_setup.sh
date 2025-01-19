#!/bin/bash
set -e
DIR="$( cd "$( readlink -f $(dirname "${BASH_SOURCE[0]}" ))" && pwd )"
ve_dir="${DIR}/_ve"

if [ ! -d "${ve_dir}" ]; then
  $(which python3) -m venv "${ve_dir}"
fi

"${ve_dir}/bin/pip" install --upgrade -r "${DIR}/requirements.txt"

