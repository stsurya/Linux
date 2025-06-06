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

A) You can set this in two ways:

- `sudo useradd <username>` won't ask for password and other details. This is non-interactive.
- `sudo adduser <username>` will ask for passowrd and it is more user-friendly and suitable for standard user setups.

## 22) How to switch from one user to another user in linux ?

A) `su - <username>` and Enter the password of the user that you want to swtich to.

- If you want to switch to root user then also same `su - <rootusername>`

## 23) Where can you see the list of users ?

A) `sudo cat /etc/passwd` here you can see all the users of the system and in `/cat/shadow` users passwords will be stored in hashed key format.

## 24) How to create a group in linux for users ?

A) Use command `sudo groupadd <groupname>` this command will create a empty group.

## 25) How to add users to the existing group ?

A) Use command `sudo usermod -aG <groupname> <username>`. This command will add the user to the group without removing the user from other groups.

## 26) Only sudo(superuser) can create groups/users ?

A) Yes, because all the groups are created at /etc/group which is at root level.

## 27) how can you know a user belongs to which group ?

A) at root level use this command `groups <username>`

- the output will be like this `<username> : <username> <group1> <group2> .....`
- In the output you're seeing the username tww times, the frist is normal username, the second one is the group created by default, it's called primary group. Every user in linux will be having a group with the username itself.
- This is created for securtiy purposes, When a user creates a file or directory, the file is assigned to the user's primary group by default. This helps manage file ownership and access permissions in a multi-user environment.
- For example, if user's primary group is user, any files user creates will belong to the user group unless explicitly changed.

## 28) How can you remove the user from a group ?

A) `sudo gpasswd -d <username> <groupname>`

## 29) how can you delete a user in linux ?

A) `sudo userdel <username>`

## 30) how can you delete a group in linux ?

A) `sudo groupdel <groupname>`

## 31) How can you make a normal user a sudo user ?

A) `sudo usermod -aG sudo <username>`

## 32) A sudo user can delete himself ?

A) No, sudo user cannot delete him/her self.

## 33) How to reset the password if a user forgets his/her password ?

A) `sudo passwd <username>`

- If you execute the above command it'll prompt you to enter a new password.
- You need to be sudo user to execture the abovr command.

## 34) What if we've only one sudo user and that user forgets the password ?

A) It'll be hard to recover then, you need to reboot your system and execute few commands while rebooting by referring official docs of linux flavour.

## 35) How to make a sudo user to normal user ?

A) `sudo deluser <username> sudo`

## 36) What is the difference between '/' and '/root' in linux ?

**/ (Root Directory):**<br>

The / directory is the root of the entire filesystem hierarchy. It is the top-level directory from which all other directories branch. All files and directories in Linux are organized under /. Important system directories like /bin, /etc, /usr, /home, etc., are located under /.<br>

**/root (Root User's Home Directory):**<br>

The /root directory is the home directory of the root user (the superuser with administrative privileges). It is a subdirectory of the root filesystem (/), but it is specifically used to store the root user's personal files, configurations, and data. It serves the same purpose for the root user as /home/username does for regular users.<br>

## 36) how to give permission to file for a group

- First that file should be owned by the group.
  `sudo chown :devops myfile.txt`
- Second give the respective permissions.
  `sudo chmod g+rw myfile.txt`
