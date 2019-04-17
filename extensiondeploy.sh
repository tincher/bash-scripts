#!/usr/bin/env bash
# zip extension files

zip_for_browser() {
	zip -rq "$(basename "$PWD")_$1.zip" ./"$1"/ -x ".*" -x "__MACOSX"
	echo 'Done'
}

function main() {
	if [[ $1 == -*c* ]]
	then
		zip_for_browser chrome
	fi
	if [[ $1 == -*f* ]]
	then
		zip_for_browser firefox
	fi

}

main "$@"
