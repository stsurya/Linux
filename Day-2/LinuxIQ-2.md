## 1) What is RHEL linux stands for ?

A) Red Hat Enterprise Linux operating system.

## 2) Other linux distributions

A) Ubuntu, CentOS, debian, fedora

## 3) What is kernel ?

A) The linux kernel is the main component of linux OS and is the core interface between a computer's hardware and its processes. It's responsible to manage the resources as efficiently as possible. Kernel is part of the operating system.

## 4) What is swapspace ?

A) Swap space in linux is used when the amount of physical memory(RAM) is full. If the system needs more memory resources and the RAM is full, inactive pages can be moved to swap space and we can use the RAM again.

## 5) Search a word in file and replace it in entire file ?

A) use sed command
`sed s/<string_name>/<new_String_name>/g <file_name>`

refer to : https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/

In above command s stands for - substitute, g stands for globally.

## 6) What is the use of SCP command ?

A) It's used to copy the files from local to remote machine. it's called as secure copy command as it used SSH for data transfer.

## 7) What is FTP protocol ?

A) File transfer protocol to exchange files to and from a remote computer or network.

## 8) What is aliases and how to setup ?

A) To create a shortcut to the command or task

`alias d="ls -ltr | awk '{print \$9}'"`

## 9) port numbers

A)
SSH - 22
HTTP - 80
HTTPS - 443
SMTP - 25
FTP - 21
DHCP - 67,68
DNS - 53

## 10) How can we check whether our previous command succesfully executed or not ?

A) echo $? if output is '0' then it's succesfull or else it' not.

## 11) What is the use of Tar command ?

A) Tar command is used to compress mulitple files/folder to a ZIP file.

## 12) About nslookup.

A) NameServerLookup(nslookup), is a command which we can use to query the DNS(Domain Name System) to obtain the IP address or domain.

**notes:**

- whatismyip on google will give you the public IP address provided by ISP, it'll be same for all who are using the router in home or office wifi.
- ipconfig will give the local ip of your machine. when u send a request to internet, your local ip will take it your router with local IP, and then router will take it to internet from public IP which is provided by ISP.

## 13) What is the use of At command ?

A) Command used to schedule a task once.

## 14) What are the links in linux ?

A) connection between a file name and the actual data on the disk. we can call this shortcut.

## 15) Differences between Soft and Hard link.

A) Soft link: link will be removed if original file removed or deleted. ls -s
Hard link: Renaming, Deleting or removing the file will not effect the link, ls

## 16) How can you print all the environment variables ?

A) Using env or printenv command.

## 17) What are the different ways to set environment variables ?

A) At user level:
Temporary, permanent

At global level.

## 18) How can you see %CPU and %Memory geeting used ?

A) use top command.

## 19) If you want to run the process even after closing the terminal, which command you'll use ?

A) nohup command
`nohup process &`

## 20) How to see all active jobs ?

A) jobs command

## 21) How to add a user in linux VM ?

A) `sudo adduser <username>` and few other details will be prompted and enter those details.

## 22) How to switch from one user to another user in linux ?

A) `su - <username>` and Enter the password of the user that you want to swtich to.

- If you want to switch to root user then also same `su - <rootusername>`

## 23) Where can you see the list of users ?

A) `sudo cat /etc/passwd` here you can see all the users of the system and in `/cat/shadow` users password will be stored in hashed key format.
