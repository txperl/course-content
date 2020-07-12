#!/bin/zsh

# Change all hardcoded Neuromatch refs to erlichlab.
find .. \( -iname \*.ipynb -o -iname \*.md \) -type f -exec sed -i.back_0 's,github\.com/NeuromatchAcademy,github\.com/erlichlab,g' {} \;
