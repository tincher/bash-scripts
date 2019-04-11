#!/bin/bash

function zip_for_browser() {
	echo "Zipping for $1"
	zip -rq $(basename $PWD)_$1.zip ./$1/ -x ".*" -x "__MACOSX"
	echo 'Done'
}

if [[ $1 == -*c* ]]
then
	zip_for_browser chrome
fi
if [[ $1 == -*f* ]]
then
	zip_for_browser firefox
fi
