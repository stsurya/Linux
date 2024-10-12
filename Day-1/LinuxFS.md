# Linux File System

- OS store and manage data on disk or partitions using a structure called file system.
- Filesystem includes files, directories and it's related permissions.
- It stores data in hirerachy of directories and files.

![Image missing](../Images/LinuxFileSystem.webp)

- **/bin:** Contains essential user binaries(executable) such as common commands like ls,cp e.t.c
- **/etc:** Contains all system configuration files and the files which maintain information
  about users and groups.
- **/home:** Contain the personal directories of all users.
- **/root:** The home directory for the root user.
- **/var:** where variable data such as logs and databases are stored.
- **/tmp:** Temporary files created by system and users.
- **/boot:** Boot loader files, e.g., kernels, initrd. Kernel initrd, vmlinux, grub files are located under /boot. Example: initrd.img-2.6.32-24-generic, vmlinuz-2.6.32-24-generic.
- **/lib:** Libraries essential for the binaries in /bin/ and /sbin/. Library filenames are either ld* or lib*.so.\*
- **/mnt:** emporarily mounted filesystems. Temporary mount directory where sysadmins can mount filesystems.
