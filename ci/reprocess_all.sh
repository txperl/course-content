#!/bin/zsh

find ../tutorials -name 'W*ipynb' -maxdepth 2 -type f -exec python process_notebooks.py {} \;