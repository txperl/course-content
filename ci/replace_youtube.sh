#!/bin/bash

Rscript make_video_lists.R

while read vid; do
  youtube_id=`echo $vid | awk '{print $1}'`
  bilibili_id=`echo $vid | awk '{print $2}'`
  
  echo "Looking for youtube $youtube_id"
  
  find .. -name '*ipynb' -type f -exec grep -l UP8rD2AwceM {} \; > files_to_change
  while read f2c; do

    # Make the bilibili text
    sed "s/BILIID/$bilibili_id/" bilibili_code > this_bilicode

    # Replace youtube code with bilibili code
    sed -i 's/PATTERN/r this_bilicode' file2
  
  done <files_to_change 

done <youtube_ids.txt


rm -f bilibili_ids.txt
rm -f youtube_ids.txt
rm -f files_to_change