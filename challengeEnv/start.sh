#!/usr/bin/env bash

activated=''
while read line; do
	activated='1'
	export "$line"
done < <(ccdecrypt -c ./DO_NOT_DELETE.env.cpt --prompt "Insert the right key: ")

test "$activated" || { echo "Something went wrong..."; exit 1;}

./main_program
