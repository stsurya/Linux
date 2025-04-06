# ln command

### What are soft links in Linux?

Soft links, also known as symbolic links or symlinks, act as shortcuts or references to files and directories in Linux. Unlike hard links, soft links are not direct mirrors of the target files. Instead, they point to a specific path in the filesystem where the target files or directories reside. If the target file is moved or deleted, the soft link becomes a ‘dangling’ link, pointing to a non-existent file, which results in errors when accessed.

### What are hard links in Linux?

Hard links in Linux are essentially additional names for an existing file on the filesystem. Unlike soft links, hard links are indistinguishable from the file they link to because they are direct references to the inode (the data structure that stores file metadata, including its contents). Creating a hard link to a file does not use additional disk space for the contents of the file. When the original file is deleted, the data remains accessible through any of its hard links until all references (links) to the file are deleted.

### How to create a soft link in Linux?

Creating a soft link in Linux uses the ln command with the -s option, which stands for “symbolic”. The syntax is as follows:

`ln -s target_path link_name`

For example, to create a symbolic link link.txt that points to a target file original.txt in the same directory, you would use:

`ln -s ../DirName/original.txt link.txt`

This command creates a symbolic link named link.txt that points to original.txt.

### How to create a hard link in Linux?

Creating a hard link in Linux does not require any special options with the ln command. The syntax is:

`ln target_file link_name`

For example, to create a hard link named hard_link.txt pointing to an original file original.txt, you would use:

`ln original.txt hard_link.txt`

This command creates a new directory entry hard_link.txt that points to the same inode as original.txt.
