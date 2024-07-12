#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PYTHONPATH="${DIR}"
_ve/bin/jupyter-lab  --port 19876 --no-browser --notebook-dir ipynb --ip 0.0.0.0

