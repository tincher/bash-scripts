#!/usr/local/bin/bash

main(){
	backupDirectories=()

	mapfile -t backupDirectories < "./backup.conf"
	for backupDirectory in ${backupDirectories[*]}; do
		echo "$(date) $backupDirectory" >> /Users/joelewig/projects/bash-scripts/backup/log.log
		cd $backupDirectory
		git add .
		git commit -m "$(date)"
		git push

	done


}

main
