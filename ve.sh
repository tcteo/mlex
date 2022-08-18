#!/bin/bash
__DIR="$( cd "$( readlink -f $(dirname "${BASH_SOURCE[0]}" ))" && pwd )"
ve_dir="${__DIR}/_ve"

if [ ! -d "${ve_dir}" ]; then
  virtualenv -p "$(which python3)" "${ve_dir}"
fi

"${ve_dir}/bin/pip" install --upgrade -r "${__DIR}/requirements.txt"

