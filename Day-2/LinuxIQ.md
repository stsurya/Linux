### How can you set a username and password to never expires ?

chage -M -1 <password>

### What is the use of echo command ?

It outputs the strings that are passed to it as an command.

### How to check the hostname/computername of the computer ?

just give **hostname** command.

### How to check the current user in linux terminal ?

just enter **whoami** command.

### how to check current path or directory ?

just enter **pwd** command..

### What is the difference b/w relative and absolute path ?

**Relative Path:** Start from current directory.
**Absolute Path:** Starts from root directory.

### Which command is used to create files in linux ?

touch.
vim.
vi.
nano <filename> --> It'll open and editor.

### How can you edit the existing file in linux ?

vim, vi, nano

### How to rename a file in Linux ?

using the mv command

Eg: `mv <old filename> <new filename>`

### How to search for a string in a file ?

using grep command
Syntax: `grep [OPTION...] PATTERNS [FILE...]`
Eg: `grep <string name> <file name>`

### Difference between egrep and grep ?

In egrep, you can search for more than one strings at same time.

Syntax: `egrep string1|string2|string3 <filename>`
