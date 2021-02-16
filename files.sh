#!/bin/bash

find_hidden_directories() {
	directory=${1:-$HOME}
	find $directory -type d -iname ".*" 2>/dev/null >> $USER.txt
}

find_hidden_files() {
	directory=${1:-$HOME}
	find $directory -type f -iname ".*" 2>/dev/null >> $USER.txt
}

file_existing_check() {
	[ -e "$(find $HOME -name $1 2>/dev/null)" ] && echo "Present" || echo "Missing"
}

check_skel_files() {
	skel_array=($(ls -A /etc/skel))
	for x in "${skel_array[@]}";
	do
	echo "$x $(file_existing_check $x)" >> $USER.txt;
	done
}

main(){
if [[ "$1" == "find-hidden-directories" ]]
then
	find_hidden_directories $2

elif [[ "$1" == "find-hidden-files" ]]
then
	find_hidden_files $2
elif [[ "$1" == "check-skel-files" ]]
then
	check_skel_files
fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
	main "$@"
fi
