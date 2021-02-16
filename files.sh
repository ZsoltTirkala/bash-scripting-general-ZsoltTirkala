#!/bin/bash

find_hidden_directories() {
directori=${1:-$HOME}
find $directori -type d -iname ".*" 2>/dev/null
}

find_hidden_files() {
directori=${1:-$HOME}
find $directori -type f -iname ".*" 2>/dev/null
}

find_hidden_files $HOME >> $USER.txt

main(){
if [[ "$1" == "find-hidden-directories" ]]
then
	find_hidden_directories $2 >> $USER.txt

elif [[ "$1" == "find-hidden-files" ]]
then
	find_hidden_files $2 >> $USER.txt
fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]
then
	main "$@"
fi
