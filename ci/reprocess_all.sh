#!/bin/zsh
cd ..;
find . -name 'W1*ipynb' -maxdepth 3 -type f > notebooks2p

while read n2p; do 

    tut=${n2p[3,-1]}
    python ci/process_notebooks.py $tut

done <notebooks2p

rm -f notebooks2p
cd ci