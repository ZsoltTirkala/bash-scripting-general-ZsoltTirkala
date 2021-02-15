# Bash Scripting

## Story

As a Linux Administrator/DevOps engineer you will have to type a lot of commands every day. Bash scripting can save you a lot of time if you create scripts for your daily repetitive tasks and can also help you automate things. Do you have any ideas about what can be turned into a bash script? If you do, please don't waste your time by typing the same commands again and again and create your first bash script.

## What are you going to learn?

- What is stdout, stdin and stderr
- How does input/output redirection work in linux
- What is the difference between `>` and `>>`
- What is a variable and what is the difference between global and local variable
- What is an environment variable
- How and why to use bash functions
- How to pass arguments to functions
- How to use arrays in bash script

## Tasks

1. Create an executable bash script that consists of the following functions:

- A function called `find_hidden_files` that outputs `Hidden files in <directory name>:` followed by a list of hidden files in a given directory.

- A function called `find_hidden_directories` that outputs `Hidden directories in <directory name>:` followed by a list of hidden directories in a given directory.

- A function called `check_skel_files` to check if the skeleton files (the files from /etc/skel directory) are present in the home directory of the user running the script. Output each file name followed by `missing` or `present`.

Call the functions in your script and redirect the output of each function to a file called `user.txt` where `user` is the username of the user running the script. Pass the home directory to the `find_hidden_*` functions.
    - The bash script generates a file `user.txt` where `user` is the name of the user running the script. The file contains the desired output.

## General requirements

None

## Hints

- Every Linux bash script starts with a shebang `#!` line and usually the file extension is `.sh`.
- To make the bash script executable give it the appropriate permissions.
- You can use the environment variables `$HOME` and `$USER` for your script.
- The names of the hidden files and directories start with a `.`. For example the file `.bashrc`. Use the `find` command to find the hidden files and directories.
- Use `>` for saving the output of your first function to a file and `>>` for saving the output of the next functions. The difference between the two is that a single greater than sign will delete the contents of the file if such a file exists before it redirects the ouptut to the file, while `>>` will append the output to the existing file.
- Build an array that contains the names of the skeleton files in `/etc/skel` by listing the files with `ls -A /etc/skel`. Loop through the array to check if the files exist in the the home directory.
- You can use [ShellCheck](https://www.shellcheck.net/) to verify your script.

## Background materials

- <i class="far fa-exclamation"></i> [Input Output Redirection in Linux/Unix Examples](https://www.guru99.com/linux-redirection.html)
- <i class="far fa-exclamation"></i> [Bash Functions](https://linuxize.com/post/bash-functions/)
- <i class="far fa-exclamation"></i> [How to Set and List Environment Variables in Linux](https://linuxize.com/post/how-to-set-and-list-environment-variables-in-linux/)
- <i class="far fa-exclamation"></i> [How to use arrays in bash script](https://linuxconfig.org/how-to-use-arrays-in-bash-script)
- <i class="far fa-candy-cane"></i> [Understanding the /etc/skel directory in Linux](https://www.thegeekdiary.com/understanding-the-etc-skel-directory-in-linux/)

