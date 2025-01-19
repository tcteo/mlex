#!/bin/bash
set -e
__DIR="$( cd "$( readlink -f $(dirname "${BASH_SOURCE[0]}" ))" && pwd )"
ve_dir="${__DIR}/_ve"

if [[ ! -d "${ve_dir}" ]]; then
  echo "virtualenv dir missing, run ve.sh"
fi

module="$1"
shift || true

# remove trailing slash
module="$(echo "${module}" | sed -e 's/\/$//g')"
# replace slashes with dots
module="$(echo "${module}" | sed -e 's/\//./g')"

if [ -x "${ve_dir}/bin/python3" ]; then
  python="${ve_dir}/bin/python3"
else
  python="python3" # whatever is already installed
fi

set -x
"${python}" -m "${module}" "$@"
