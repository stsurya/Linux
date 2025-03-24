The `ls` command in Linux is used to list directory contents. It has several options (parameters) that modify its behavior. Here’s a comprehensive list of `ls` options:

---

## **Basic Usage:**

```bash
ls [options] [directory]
```

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

---

## **2. Sorting Options**

| Option           | Description                              | Example          |
| ---------------- | ---------------------------------------- | ---------------- |
| `ls -t`          | Sort by modification time (newest first) | `ls -lt`         |
| `ls -S`          | Sort by file size (largest first)        | `ls -lS`         |
| `ls -r`          | Reverse order                            | `ls -lr`         |
| `ls -X`          | Sort by extension                        | `ls -lX`         |
| `ls --sort=size` | Sort by size                             | `ls --sort=size` |

---

## **3. File Type Indicators (`-F` option)**

| Symbol | Meaning         |
| ------ | --------------- | ---------- |
| `/`    | Directory       |
| `*`    | Executable file |
| `@`    | Symbolic link   |
| `      | `               | Named pipe |
| `=`    | Socket          |

Example:

```bash
ls -F
```

Output:

```
file.txt  script.sh*  mydir/
```

---

## **4. Permissions and Ownership**

| Option  | Description                      | Example  |
| ------- | -------------------------------- | -------- |
| `ls -g` | Show group ownership (omit user) | `ls -lg` |
| `ls -o` | Show owner (omit group)          | `ls -lo` |
| `ls -n` | Show numeric UID and GID         | `ls -ln` |

---

## **5. Advanced Options**

| Option            | Description             | Example           |
| ----------------- | ----------------------- | ----------------- |
| `ls --color=auto` | Show colored output     | `ls --color=auto` |
| `ls --full-time`  | Show complete timestamp | `ls --full-time`  |
| `ls -v`           | Natural version sorting | `ls -v`           |
| `ls --help`       | Show help information   | `ls --help`       |

---

### **Most Commonly Used Commands**

```bash
ls -lh        # Long format + human-readable sizes
ls -la        # Show all files including hidden ones
ls -lt        # Sort by modification time
ls -lS        # Sort by file size
ls -R         # Recursive listing
```

Would you like a detailed explanation of any specific option? 🚀
