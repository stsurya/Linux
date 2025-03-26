# ls command

The ls command is used to list all files and directories in the Linux terminal. By default, the ls command lists files in alphabetical order but can be customized with various options to display additional information including permissions, ownership, and size.

**Syntax:**<br>
`ls [option] [file/directory]`

---

## **1. Listing Options**

| Option  | Description                            | Example     |
| ------- | -------------------------------------- | ----------- | ------- |
| `ls`    | List files in a directory (default)    | `ls`        |
| `ls -l` | Long format (detailed info)            | `ls -l`     |
| `ls -a` | Show hidden files (`.*` files)         | `ls -a`     |
| `ls -A` | Show hidden files, except `.` and `..` | `ls -A`     |
| `ls -d` | Show only directories (not contents)   | `ls -d */`  |
| `ls -R` | List contents recursively              | `ls -R`     |
| `ls -F` | Append indicators (`/`, `*`, `@`, `    | `) to files | `ls -F` |
| `ls -h` | Human-readable sizes (works with `-l`) | `ls -lh`    |
| `ls -i` | Show inode numbers of files            | `ls -i`     |
| `ls -1` | Display One File Per Line Using        | `ls -1`     |

---

## **2. Sorting Options**

| Option           | Description                              | Example          |
| ---------------- | ---------------------------------------- | ---------------- |
| `ls -t`          | Sort by modification time (newest first) | `ls -lt`         |
| `ls -S`          | Sort by file size (largest first)        | `ls -lS`         |
| `ls -r`          | Reverse order                            | `ls -lr`         |
| `ls -X`          | Sort by extension                        | `ls -lX`         |
| `ls --sort=size` | Sort by size                             | `ls --sort=size` |

`ls -l`: It display the deatiled info like Permissions, Owner, Group, Size, Last Modified Time and File Name.
