### 1. What is linux?

Linux is an operating system same as windows and mac. Linux is open source which means anyone can see the code and modify it according to their needs which led to huge community of developers constantly improving and customizing Linux to suit different needs. Linux is more secure than other operating systems. Linux is available in different flavors or distributions such as Ubuntu, Debian etc.

### 2. What is Unix?

Unix is portable, multi-user, bug-fixing developed by AT&T. It is used in webservers, PC’s, and workstations. Many business applications are accessible on it.

### 3. Difference b/w Linux and Unix?

**Linux:**

- Linux is open source and large number of programmers work together to improve it.
- It’s open source and no licensing is required.
- Large Community and can easily solve bugs and issues.
- Mostly found on workstations and enterprise level applications and on personal computers as well.

**Unix:**

- Unix is developed by AT & T
- Licensing is required.
- Smaller Community and takes time to solve the bug.
- Only enterprise level you can’t find it on personal computers.

While Unix and Linux have similarities but they’ve key differences in terms of Licensing, community, kernel design.

### 4. What is Kernel?

The major aim of kernel is to manage the communication between software i.e., user-level applications and hardware i.e., CPU and memory.
It’s responsible for various tasks such as disk management, task management and memory management.
Kernel loads into memory of first when an operating system is loaded and remains into memory until it’s shutdown.
Types of Kernel:

- Monolithic Kernel: Here all operating system services operate in kernel space. It has huge lines of code. Eg: Linux
- Microkernel: Less services run in Kernel space, It puts rest in user space.
- Hybrid Kernel: It’s a combination of monolithic and micro, They maintain a small kernel space containing essential services like process management and memory allocation while placing device drivers and other non-essential components in user space.
  Reference: https://www.geeksforgeeks.org/kernel-in-operating-system/

### 5. Difference between Shell Scripting and Bash Scripting.

Shell scripting is scripting in any shell, whereas Bash scripting is scripting specifically for Bash. You can say bash is improvised version of shell scripting.

### 6. What is Symbolic Link?

Allows you to create a link between files and directories, making it easier to access and manage your files.

Linux Commands: https://www.digitalocean.com/community/tutorials/linux-commands

### 7. How will you check the version of your operating system ?

cat /etc/os-release

### What are soft links in Linux?

Soft links, also known as symbolic links or symlinks, act as shortcuts or references to files and directories in Linux. Unlike hard links, soft links are not direct mirrors of the target files. Instead, they point to a specific path in the filesystem where the target files or directories reside. If the target file is moved or deleted, the soft link becomes a ‘dangling’ link, pointing to a non-existent file, which results in errors when accessed.

### What are hard links in Linux?

Hard links in Linux are essentially additional names for an existing file on the filesystem. Unlike soft links, hard links are indistinguishable from the file they link to because they are direct references to the inode (the data structure that stores file metadata, including its contents). Creating a hard link to a file does not use additional disk space for the contents of the file. When the original file is deleted, the data remains accessible through any of its hard links until all references (links) to the file are deleted.

### How to create a soft link in Linux?

Creating a soft link in Linux uses the ln command with the -s option, which stands for “symbolic”. The syntax is as follows:

`ln -s target_path link_name`

For example, to create a symbolic link link.txt that points to a target file original.txt in the same directory, you would use:

`ln -s original.txt link.txt`

This command creates a symbolic link named link.txt that points to original.txt.

### How to create a hard link in Linux?

Creating a hard link in Linux does not require any special options with the ln command. The syntax is:

`ln target_file link_name`

For example, to create a hard link named hard_link.txt pointing to an original file original.txt, you would use:

`ln original.txt hard_link.txt`

This command creates a new directory entry hard_link.txt that points to the same inode as original.txt.
