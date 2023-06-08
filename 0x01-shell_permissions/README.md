# This is my shell permissions scripts directory

### Bellow are a list of the scripts and the tasks they perform.

__0-iam_betty__ switches the current user to the user `betty`.

__1-who_am_i__ prints the effective username of the current user.

__2-groups__  prints all the groups the current user is part of.

__3-new_owner__ changes the owner of the file `hello` to the user `betty`.

__4-empty__ creates an empty file called `hello`.

__5-execute__ adds execute permission to the owner of the file `hello`.

__6-multiple_permissions__ adds execute permission to the owner and the group owner, and read permission to other users, to the file `hello`.

__7-everybody__ adds execution permission to the owner, the group owner and the other users, to the file `hello`. 

__8-James_Bond__ script that sets the permission to the file `hello` as follows:
* Owner: no permission at all
* Group: no permission at all
* Other users: all the permissions

__9-John_Doe__ sets the mode of the file `hello` to `-rwxr-x-wx`

__10-mirror_permissions__ sets the mode of the file `hello` the same as `olleh’s` mode.

__11-directories_permissions__ adds execute permission to all subdirectories of the current directory for the owner, the group owner and all other users. Regular files are not changed. 

__12-directory_permissions__ creates a directory called `my_dir` with permissions 751 in the working directory. 

__13-change_group__ changes the group owner to `school` for the file `hello`.

__100-change_owner_and_group__ changes the owner to `vincent` and the group owner to `staff` for all the files and directories in the working directory.

__101-symbolic_link_permissions__ changes the owner and the group owner of the symbolic linked file `_hello` to `vincent` and `staff` respectively.

__102-if_only__ changes the owner of the file `hello` to `betty` only if it is owned by the user `guillaume`.

__103-Star_Wars__ plays the StarWars IV episode in the terminal.
