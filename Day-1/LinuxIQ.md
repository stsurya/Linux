## i) How can you set a username and password to never expires ?

A) chage -M -1 <password>

## ii) What is the use of echo command ?

A) It outputs the strings that are passed to it as an command.

## iii) How to check the hostname/computername of the computer ?

A) just give **hostname** command.

## iv) How to check the current user in linux terminal ?

A) just enter **whoami** command.

## v) how to check current path or directory ?

A) just enter **pwd** command..

## vi) What is the difference b/w relative and absolute path ?

A)
**Relative Path:** Start from current directory.
**Absolute Path:** Starts from root directory.

## vii) Which command is used to create files in linux ?

A)
touch.
vim.
vi.
nano <filename> --> It'll open and editor.

## viii) How can you edit the existing file in linux ?

A) vim, vi, nano

## ix) How to rename a file in Linux ?

A) using the mv command

Eg: `mv <old filename> <new filename>`

## x) How to search for a string in a file ?

A)
using grep command
Syntax: `grep [OPTION...] PATTERNS [FILE...]`
Eg: `grep <string name> <file name>`

## 11) Difference between egrep and grep ?

A) In egrep, you can search for more than one strings at same time.

Syntax: `egrep string1|string2|string3 <filename>`

## 12. How can you read a file without using cat command ?

A) Using less, more, vi commands
Syntax: less <filename> To quit --> press q
more <filename>
vi <filename> To quit --> :q

- Less command is adavtangeous, because we can easily read the big files. Forward and backward search is easy.Navigation from top to bottom is easy.

## 13. How to check a file's permission ?

A) ls -l ,ll , getfacl file_name

Refer: https://www.geeksforgeeks.org/ls-command-in-linux/

## 14. How to check IP of Linux Server ?

A) ifconfig

## 15. How to read the top 5lines in a file ?

A) head -5 <file_name>

## 16. How to read the last 5lines in a file

A) tail -5 <file_name>

## 17. How to list hidden files ?

A) ls -la [Hidden files are always started with .]

## 18. How to see all the recently used commands ?

A) history

## 19. What is root ?

A) Admin or super user.
/root home directory for root user
/root directory

## 20) What is inode and how to find it for a file ?

A) ls -li
inode is an index node. It serves as unique Idenitifier for a specific metadata on the file system.

## 21) How to find files on linux system ?

A) By using find command or locate command.

Synatax: `find <pathname> -name <filename>`

## 22) Command for counting words and lines ?

A)
Syntax: `wc <filename>` or `wc -l <filename>`
The first column shows number of lines, second columns shows number of words, third columns shows number of characters.

## 23) What is pipe used for ?

A) It is used to combine two commands, redirect the ouput of command1 to commands2

## 24) How to view the difference b/w two files in linux ?

A) diff file1 file2

## 25) what is the purpse of shred command ?

A) It's used to delete the files which are unable to recover.

Syntax: `shred --remove <filename>`

## 26) How to get the information about system Architecture ?

A) lscpu

## 27) How to combine two files ?

A) cat file1 file2 > file3

## 28) How do you find the type of the file ?

A) file file_name

## 29) How to sort the file ?

A) By using sort command.
`sort <filename>`

## 30) What are different types of permissions exist for a file ?

A) Read, Write, Execute

## 31) How to redirect an error into a file ?

A) To redirect an error use 2>

## 32) How to automate any task or script ?

A) cronjob, command is crontab

## 33) What is daemon service ?

A) Service that keeps running in the background.
Eg: httpd, sshd

## 34) How to check service is runningor not ?

A) systemctl status

## 35) how to check disk space ?

A) df

## 36) how to check the size of directory content ?

A) we use du command (du-->disk uitilization)

## 37) How to check the CPU processes ?

A) top command

## 38) How to check the processes in linux ?

A) ps

## 39) How to stop a process ?

A) kill command
kill -9 forcefull turn off the process.

## 40) How to check whther you're able to access the other server or not ?

A) PING or telnet command.
Packet InterNet Groper (PING)
`ping 0` to ping the localhost.

**Telnet** is used to establish a connection and access a remote computer's command line interface,
while **Ping** is used to test the connectivity and response time between two devices on a network.

## 41) How to get info about ports ?

A) netstat
`NetStat` stands for network statistics. It allows users to display network-related information and diagnose various networking issues.

- `netstat -all` shows both listening and non-listening sockets.
- `netstat -at` lists all tcp ports.
- `netstat -au` lists all udp ports.
- `netstat -l` lists all the listening ports.
- `netstat -lt` lists all the TCP ports which are in listening state.
- `netstat -lu` lists all the UDP ports which are in listening state.
