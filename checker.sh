#!/bin/bash/


curl -s https://en.wiktionary.org/wiki/${1}#german >> ${1}.txt
cat ${1}.txt | grep -c noun
cat ${1}.txt | grep -c verb
cat ${1}.txt | grep -c adjective
cat ${1}.txt | grep -c pronoun
rm ${1}.txt

