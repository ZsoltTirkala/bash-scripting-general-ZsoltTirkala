#!/bin/bash

find_hidden_directories() {
ls -Ap | grep "^\..*/$" >> $USER.txt
cat $USER.txt
}

find_hidden_files() {
ls -ap | grep -v / | grep "^\." >> $USER.txt
cat $USER.txt
}

main(){
if [[ "$1" == "find-hidden-directories" ]]
then
	find_hidden_directories

elif [[ "$1" == "find-hidden-files" ]]
then
	find_hidden_files
fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
	main "$@"
fi
