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
