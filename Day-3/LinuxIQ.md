## 1) why /etc/passwd and /etc/shadow can't be merged into one file ?

A) /etc/passwd file consists of users details and it may be used by other applications. And /etc/shadow consists of passwords of the users which are stored in hash format.

- If we merge the both in one file, the applications that are using etc/passwd file can have access to password which are stored in hased format and can lead to some security breach.

## 2) Command to list all the processes ?

A) `ps -e`

## 3) To list all the files opened by particular PID

A) `lsof -p PID`

## 4) What is linux and what are it's main features ?

A) Linux is free and open source operating system based on unix. It main features include security, stability, support for hardware features, flexibility.

## 5) What is the difference between linux and Unix ?

A) The primary difference between linux and unix is linux is open source and free whereas unix is proprietary. Additionally linux is used for wide variety of applications, whereas unix is used only at enterprise level.

## 6) What is the linux kernel ?

A) Kernel is the core part of the operating system. It acts as a interface b/w computer's hardware and the software applications that are running on it. It manages hardware resources, enables process control, file mgmt and system secuirty.

## 7) What are the different types of shell you've seen ?

A) BASH, KSH (Korn shell)

## 8) How do you change file permissions in linux ?

A) `chmod u=rwx,g=rw,o= <filename>`

## 9) What is a daemon in linux ?

A) A daemon is a background process that runs continuously and typically starts at boot of system.

## 10) What is the difference between soft link and hard link in linux ?

A) A soft link is a pointer to the file whereas hard link is just the replica of file, if you update the file in which had hard link the another file will be getting update automatically.

- Deleting the original file affects a soft link but not hard link.
- Types of Symbolic link are soft link and hardlink.

## 11) What is the use of df command in linux ?

A) The df command is used to display disk space uasge of file systems.

## 12) What does the free command do in linux ?

A) The free command will display the total memory used and how much memory is left over for physical RAM and Swap memory in system.

## 13) what are inodes in Linux ?

A) An inode is a data structure that stores information about the file except it's name and actual data. Every file/folder in linux will have an inode and it's identified by uniquer identifier called inode.

## 14) What is the purpose of crontab in linux ?

A) crontab is used to schedule command which need to be executed periodically. It holds the list of scheduled tasks.

- by using crontab -l command you can see the list of scheduled tasks.

## 15) How can you find the ip address of linux server ?

A) `ifconfig`

## 16) Explain the purpose of the sshd service.

A) sshd is the SSH daemon that allows secure remote connections to the server.

## 17) How do you check the status of a system in linux ?

A) by using `systemctl status <servicename>`

## 18) 'Find' command in linux ?

A) `find [path-to-file] -name <filename>`

## 19) How can you how much size a file is occupying //

A) `du -h <filename>` it'll give you the size of the file

## 20) What is package manager in linux ?

A) A package manager is a collection of tools that automates the process of installing, upgrading, configuring, removing software packages in consistent manner.

## 21) How shell script starting line looks like ?

A) `#1/bin/bash`

## 22) What is the use of nohup command ?

A) nohup command is used to run a command/script in the background even after logging out from the shell.

## 23) What is the purpose of /var directory ?

A) The /var directory contains variable data like system logs, temporary files required for running applications.

## 24) What is the purpose of /etc/hosts ?

A) It us used to map hostnames to IP addresses.

## 25) How do you change the hostname of linux system ?

A) You can use `hostnamectl` command or by editing `/etc/hostname` file.

## 26) Explain the purpose of netstat command ?

A) netstat is used to display the network connections of the linux system.

## 27) What are Cron jobs ?

A) Cron jobs automate repetitve tasks, ensuring they run at scheduled times without manual intervention.

## 28) How does cron work ?

A) Cron uses a daemon(a background process) called cron to execute the scheduled tasks. The configuration for these tasks is stored in a filec called crontab.
