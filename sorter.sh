#!/bin/bash/

while read -ra line;
do for word in "${line[@]}"; 
do sh checker.sh -l German -w $word; 
done; 
done < unique_words.txt
