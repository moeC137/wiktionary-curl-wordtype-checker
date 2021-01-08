# wiktionary-curl-wordtype-checker
checks if a given word is a noun, verb, adjective, pronoun, adverb, article, preposition, numeral or conjunction


does a curl. then checks with a grep.



use:
sh checker.sh -l English -w carport

-l sets language
-w word for request

use sh sorter.sh to sort a textfile with a list of words

use this command for paralel requests (10x the speed, copy from raw or \\\ are missing):
<unique_words.txt xargs -d\\n -I % -P10 sh checker.sh -l German -w %

