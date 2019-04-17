#!/usr/bin/env bash
# clone the repo in the argument from your github

#https://api.github.com/users/username/repos

readonly CONFIG_FILE=/etc/clonemyrepo/github.conf
. $CONFIG_FILE

clone() {
	git clone $2 "https://github.com/$name/$1.git" $3
}

set_config() {
	if [[ "$(cat $CONFIG_FILE | grep -c $1)" -gt 0 ]]
	then
		gsed -i'.original' "s/$1.*$/$1=$2/gp" $CONFIG_FILE
		gsed -i'.original' "$!N; /^\(.*\)\n\1$/!P; D" $CONFIG_FILE
	fi
}

main() {
	#todo get
	if [[ $1 == "set" ]]
	then
		set_config "${@:2}"
	else
		clone "$@"
	fi
}

main "$@"
