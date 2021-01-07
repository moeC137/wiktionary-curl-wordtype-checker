#!/bin/bash/

if [ "$1" == "-h" ]; then
  echo "Usage:sh checker.sh -l Language -w word"
  echo "dont forget to set chmod u+x checker.sh before testing!"
  exit 0
fi


while getopts l:w: flag
do
    case "${flag}" in
        l) language=${OPTARG};;
        w) word=${OPTARG};;
    esac
done


curl -s https://en.wiktionary.org/wiki/${word}#${language} >> ${word}.txt

#echo "noun:"
var1=$(cat ${word}.txt | grep -c ${language}_noun)
#echo ${var1} 

#echo "verb:"
var2=$(cat ${word}.txt | grep -c ${language}_verb)
#echo ${var2}

#echo "adjective"
var3=$(cat ${word}.txt | grep -c ${language}_adjective)
#echo ${var3}

#echo "pronoun"
var4=$(cat ${word}.txt | grep -c ${language}_pronoun)
#echo ${var4}

var6=$(cat ${word}.txt | grep -c ${language}_preposition)
var7=$(cat ${word}.txt | grep -c ${language}_adverb)
var8=$(cat ${word}.txt | grep -c ${language}_conjunction)
var9=$(cat ${word}.txt | grep -c ${language}_numeral)
var10=$(cat ${word}.txt | grep -c ${language}_article)


rm ${word}.txt

#echo "$var1"
if [[ $var1+$var2+$var3+$var4+$var6+$var7+$var8+$var9+$var10 -lt 1 ]]
then
var5=$(echo ${word^})
curl -s https://en.wiktionary.org/wiki/${var5}#${language} >> ${var5}.txt
var1=$(cat ${var5}.txt | grep -c ${language}_noun)
rm ${var5}.txt
#printf "$var5"
fi

#curl -s https://en.wiktionary.org/wiki/${var5}#${language} >> ${var5}.txt

#var1=$(cat ${var5}.txt | grep -c ${language}_noun)


#rm ${var5}.txt

#echo "$var1"
if [[ $var1 -gt 0 ]]
then
printf "is a noun \n" 
echo "${word}" >> nouns.txt
fi

if [[ $var2 -gt 0 ]]
then
printf "is a verb \n"
echo "${word}" >> verbs.txt
fi

if [[ $var3 -gt 0 ]]
then
printf "is a adjective \n"
echo "${word}" >> adjectives.txt
fi

if [[ $var4 -gt 0 ]]
then
printf "is a pronoun \n"
echo "${word}" >> pronouns.txt
fi

if [[ $var6 -gt 0 ]]
then
printf "is a preposition \n"
echo "${word}" >> prepositions.txt
fi

if [[ $var7 -gt 0 ]]
then
printf "is a adverb \n"
echo "${word}" >> adverbs.txt
fi

if [[ $var8 -gt 0 ]]
then
printf "is a conjunction \n"
echo "${word}" >> conjunctions.txt
fi

if [[ $var9 -gt 0 ]]
then
printf "is a numeral \n"
echo "${word}" >> numerals.txt
fi

if [[ $var10 -gt 0 ]]
then
printf "is a article \n"
echo "${word}" >> articles.txt
fi

if [[ $var1+$var2+$var3+$var4+$var6+$var7+$var8+$var9+$var10 -lt 1 ]]
then
printf "is a other thing \n"
echo "${word}" >> others.txt
fi


echo "language: $language";
echo "word: $word";

