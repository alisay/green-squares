#!/bin/bash

# green squares maketh the programmer

adjust() {
    NEWDATE=$(gdate -d "$1")
	echo "$RANDOM" | tee bleeep
	git add bleeep
	git commit -am "$NEWDATE"
    GIT_COMMITTER_DATE="$NEWDATE" git commit --amend --no-edit --date "$NEWDATE"
    PREVDATE=$(gdate -d "$1" +%Y-%m-%d)
}

adjust "7 January 2025"

for i in $(seq 0 1789); do
	echo $i
	adjust "$PREVDATE + 1 days"
done