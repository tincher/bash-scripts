#!/usr/bin/env bash

main() {
	# shopt -s nullglob
	for file in $PWD/*.sh
	do
		cp $file "/usr/local/bin/$(basename $file .sh)"
	done
}

main
