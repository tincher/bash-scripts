#!/usr/bin/env bash

main() {
	CONFIG_DIR=/etc/mybashscripts
	CONFIG_FILE=$CONFIG_DIR/deploymyscripts.conf
	if [[ ! -d  $CONFIG_DIR ]]
	then
		mkdir $CONFIG_DIR && touch $CONFIG_FILE
		echo "name=init" > $CONFIG_FILE
	fi
	for file in $PWD/*.sh
	do
		cp $file "/usr/local/bin/$(basename $file .sh)"
	done
}

main
