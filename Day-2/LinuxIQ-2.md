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

- whatismyip on google will give you the public IP address provided by ISP, it'll be same for all who are using the router in home or office wifi.
- ipconfig will give the local ip of your machine. when u send a request to internet, your local ip will take it your router with local IP, and then router will take it to internet from public IP which is provided by ISP.
