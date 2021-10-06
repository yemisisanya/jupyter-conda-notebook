#!/bin/sh
echo "$1"

`conda run --no-capture-output -n $environment jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root`


