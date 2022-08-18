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

set -x
"${ve_dir}/bin/python" -m "${module}" "$@"
