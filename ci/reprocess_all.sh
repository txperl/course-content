#!/bin/zsh

find .. -name '*ipynb' -type f -exec python process_notebooks.py {} \;