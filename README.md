# wiktionary-curl-wordtype-checker
checks if a given word is a noun, verb, adjective, pronoun or adverb


does a curl. then checks with a grep. if grep returns nothing its not that.

curl -s https://en.wiktionary.org/wiki/turm#german | grep adjective
curl -s https://en.wiktionary.org/wiki/turm#german | grep noun
curl -s https://en.wiktionary.org/wiki/turm#german | grep verb
curl -s https://en.wiktionary.org/wiki/turm#german | grep German_pronoun_forms
curl -s https://en.wiktionary.org/wiki/turm#german | grep adverb
