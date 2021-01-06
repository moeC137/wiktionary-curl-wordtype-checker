#!/bin/bash/


curl -s https://en.wiktionary.org/wiki/${1}#german >> ${1}.txt
echo "noun:"
cat ${1}.txt | grep -c German_noun
echo "verb:"
cat ${1}.txt | grep -c German_verb
echo "adjective"
cat ${1}.txt | grep -c German_adjective
echo "pronoun"
cat ${1}.txt | grep -c German_pronoun
rm ${1}.txt

