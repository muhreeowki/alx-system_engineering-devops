# This is a directory for all my shell scripts.
__0-current_working_directory__ is a script that prints the absolute path name of the current working directory.

__1-listit__ displays current directory contents.

__2-bring_me_home__ changes into the users home directory.

__3-listfiles__ displays current directory contents:
* Long format.

__4-listmorefiles__ displays current directory contents: 
* Long format.
* Shows all hidden files.

__5-listfilesdigitonly__ displays current directory contents:
* Long Format.
* User groups and IDs displayed numerically.
* Shows all hidden files.

__6-firstdirectory__ creates a directory named `my_first_directory` in the `/tmp/` directory.

__7-movethatfile__ moves the file `betty` from `/tmp/` to `/tmp/my_first_directory`.

__8-firstdelete__ deletes the file betty in the directory `/tmp/my_first_directory`

__9-firstdirdeletion__ deletes the directory `my_first_directory` that is in the `/tmp` directory.

__10-back__ changes the working directory to the previous one.

__11-lists__ lists all files in the current directory, parent of the working directory and the `/boot` directory (in this order).
* Long format.
* Shows all hidden files.

__12-file_type__ prints the type of the file named `iamafile` in the `/tmp` directory.

__13-symbolic_link__ creates a symbolic link to `/bin/ls`, named `__ls__` inside the current directory.

__14-copy_html__ copies all the HTML files from the current working directory to the parent of the working directory, but only copies files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

__100-lets_move__ moves all files beginning with an uppercase letter to the directory `/tmp/u`. 

__101-clean_emacs__ deletes all files in the current working directory that end with the character `~`.

__102-tree__ creates the directories `welcome/`, `welcome/to/` and `welcome/to/school` in the current directory using a single command.

__103-commas__ lists all the files and directories of the current directory, separated by commas (,):
* Directory names end with a slash (/)
* Shows all hidden files
* Lists in alpha order
* Only digits and letters are used to sort. Digits come first.

__school.mgc__ this is a magic file that can be used with the command `file` to detect School data files. School data files always contain the string SCHOOL at offset 0.


