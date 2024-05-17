### i) How can you set a username and password to never expires ?

A) chage -M -1 <password>

### ii) What is the use of echo command ?

A) It outputs the strings that are passed to it as an command.

### iii) How to check the hostname/computername of the computer ?

A) just give **hostname** command.

### iv) How to check the current user in linux terminal ?

A) just enter **whoami** command.

### v) how to check current path or directory ?

A) just enter **pwd** command..

### vi) What is the difference b/w relative and absolute path ?

A)
**Relative Path:** Start from current directory.
**Absolute Path:** Starts from root directory.

### vii) Which command is used to create files in linux ?

A)
touch.
vim.
vi.
nano <filename> --> It'll open and editor.

### viii) How can you edit the existing file in linux ?

A) vim, vi, nano

### ix) How to rename a file in Linux ?

A) using the mv command

Eg: `mv <old filename> <new filename>`

### x) How to search for a string in a file ?

A)
using grep command
Syntax: `grep [OPTION...] PATTERNS [FILE...]`
Eg: `grep <string name> <file name>`

### 11) Difference between egrep and grep ?

A) In egrep, you can search for more than one strings at same time.

Syntax: `egrep string1|string2|string3 <filename>`

### 12. How can you read a file without using cat command ?

A) Using less, more, vi commands
Syntax: less <filename> To quit --> press q
more <filename>
vi <filename> To quit --> :q

- Less command is adavtangeous, because we can easily read the big files. Forward and backward search is easy.Navigation from top to bottom is easy.

### 13. How to check a file's permission ?

A) ls -l ,ll , getfacl file_name

### 14. How to check IP of Linux Server ?

A) ifconfig

### 15. How to read the top 5lines in a file ?

A) Head -5 <file_name>

### 16. How to read the last 5lines in a file

A) Tail -5 <file_name>

### 17. How to list hidden files ?

A) ls -la [Hidden files are always started with .]

### 18. How to see all the recently used commands ?

A) history

### 19. What is root ?

A) Amdin or super user.
/root home directory for root user
/root directory

### 20) What is inode and how to find it for a file ?

A) ls -li
inode is an index node. It serves as unique Idenitifier for a specific metadata on the file system.
