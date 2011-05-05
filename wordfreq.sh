#!/bin/sh
# Usage: wordfreq <url>
# Show top 25 words in a document at <url>
# Taken from Ryan Tomayko's talk "The Shell Hater's Handbook" - http://shellhaters.heroku.com/

url="$1"

curl -s "$url"      |
tr -c "A-Za-z" '\n' |
grep -v '^$'        |
sort                |
uniq -c             |
sort -rn            |
head -25
