#!/bin/bash/


curl -s https://en.wiktionary.org/wiki/${1}#german >> ${1}.txt

#echo "noun:"
var1=$(cat ${1}.txt | grep -c German_noun)
#echo ${var1} 

#echo "verb:"
var2=$(cat ${1}.txt | grep -c German_verb)
#echo ${var2}

#echo "adjective"
var3=$(cat ${1}.txt | grep -c German_adjective)
#echo ${var3}

#echo "pronoun"
var4=$(cat ${1}.txt | grep -c German_pronoun)
#echo ${var4}


rm ${1}.txt

if [[ $var1 -gt 0 ]]
then
printf "es ist ein noun \n" 
fi

if [[ $var2 -gt 0 ]]
then
printf "es ist ein verb \n"
fi

if [[ $var3 -gt 0 ]]
then
printf "es ist ein adjective \n"
fi

if [[ $var4 -gt 0 ]]
then
printf "es ist ein pronoun \n"
fi
