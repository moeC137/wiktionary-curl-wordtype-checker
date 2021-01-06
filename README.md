# wiktionary-curl-wordtype-checker
checks if a given word is a noun, verb, adjective, pronoun or adverb


does a curl. then checks with a grep. if grep returns nothing its not that.

curl -s https://en.wiktionary.org/wiki/turm#german | grep -c adjective

curl -s https://en.wiktionary.org/wiki/turm#german | grep -c noun

curl -s https://en.wiktionary.org/wiki/turm#german | grep -c verb

curl -s https://en.wiktionary.org/wiki/turm#german | grep -c German_pronoun_forms

curl -s https://en.wiktionary.org/wiki/turm#german | grep -c adverb

(grep -c returns the number of lines with the pattern, if 0 then its not that word type)


