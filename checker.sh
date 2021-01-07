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

var6=$(cat ${1}.txt | grep -c German_preposition)
var7=$(cat ${1}.txt | grep -c German_adverb)
var8=$(cat ${1}.txt | grep -c German_conjunction)
var9=$(cat ${1}.txt | grep -c German_numeral)
var10=$(cat ${1}.txt | grep -c German_article)


rm ${1}.txt


if [[ $var1+$var2+$var3+$var4+var6+var7+var8+var9+var10 -lt 1 ]]
then
var5=$(echo ${1^})
#printf "$var5"
fi

curl -s https://en.wiktionary.org/wiki/${var5}#german >> ${var5}.txt

var1=$(cat ${var5}.txt | grep -c German_noun)
#var2=$(cat ${var5}.txt | grep -c German_verb)
#var3=$(cat ${var5}.txt | grep -c German_adjective)
#var4=$(cat ${var5}.txt | grep -c German_pronoun)

rm ${var5}.txt

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

if [[ $var6 -gt 0 ]]
then
printf "es ist eine preposition \n"
fi

if [[ $var7 -gt 0 ]]
then
printf "es ist eine adverb \n"
fi

if [[ $var8 -gt 0 ]]
then
printf "es ist eine conjunction \n"
fi

if [[ $var9 -gt 0 ]]
then
printf "es ist eine numeral \n"
fi

if [[ $var10 -gt 0 ]]
then
printf "es ist eine article \n"
fi
