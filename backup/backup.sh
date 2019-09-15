#!/usr/local/bin/bash
mapfile -t backupDirectories < backup.conf

for backupDirectory in $backupDirectories
do
	cd $backupDirectory
	git add .
	git commit -m "$(date)"
	git push
done
