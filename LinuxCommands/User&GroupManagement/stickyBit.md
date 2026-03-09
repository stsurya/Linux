### Sticky Bit in Linux (File Permissions)

The **sticky bit** is a special permission in Linux used mainly on **directories** to control file deletion. It ensures that **only the file owner, directory owner, or root user can delete or rename files inside that directory**, even if other users have write permissions.

---

## 1. Why Sticky Bit Is Used

In shared directories where **multiple users can create files**, without a sticky bit any user could delete another user’s files.

Sticky bit prevents this.

Common example: **`/tmp` directory**

* Everyone can create files.
* But users **cannot delete files created by other users**.

---

## 2. How Sticky Bit Appears in Permissions

Example:

```
drwxrwxrwt 10 root root 4096 Mar  9 10:00 /tmp
```

Breakdown:

| Permission  | Meaning            |
| ----------- | ------------------ |
| `d`         | directory          |
| `rwxrwxrwt` | permissions        |
| `t`         | sticky bit enabled |

Important part:

```
t
```

* Appears in the **others execute position**
* Indicates sticky bit is enabled.

If execute permission is not present:

```
T
```

---

## 3. Setting Sticky Bit

### Method 1 — Symbolic Mode

```
chmod +t directory_name
```

Example:

```
mkdir shared
chmod 777 shared
chmod +t shared
```

Check:

```
ls -ld shared
```

Output:

```
drwxrwxrwt 2 user user 4096 Mar 9 10:05 shared
```

---

### Method 2 — Numeric Mode

Sticky bit value = **1000**

Example:

```
chmod 1777 shared
```

Explanation:

```
1 777
│ └── normal permissions
└──── sticky bit
```

---

## 4. Example Scenario (Very Important for Interviews)

### Without Sticky Bit

Create directory:

```
mkdir testdir
chmod 777 testdir
```

User1 creates file:

```
touch file1
```

User2 can delete:

```
rm file1
```

Because directory has **write permission for everyone**.

---

### With Sticky Bit

Enable sticky bit:

```
chmod +t testdir
```

Now permissions:

```
drwxrwxrwt
```

Now:

* User1 creates `file1`
* User2 tries to delete

```
rm file1
```

Result:

```
Operation not permitted
```

Only allowed users:

* File owner
* Directory owner
* Root user

---

## 5. Real World Example

Check `/tmp` directory:

```
ls -ld /tmp
```

Output:

```
drwxrwxrwt 10 root root 4096 Mar 9 10:00 /tmp
```

Meaning:

* Anyone can create files
* But cannot delete other users’ files

---

## 6. Sticky Bit for Files

Historically used to **keep programs in memory**, but **modern Linux does not use sticky bit for files anymore**.

Today it is **mainly used on directories**.

---

## 7. How to Remove Sticky Bit

```
chmod -t directory_name
```

Example:

```
chmod -t shared
```

---

## 8. Quick Summary

| Feature           | Description                          |
| ----------------- | ------------------------------------ |
| Permission symbol | `t`                                  |
| Numeric value     | `1000`                               |
| Mostly used on    | Directories                          |
| Purpose           | Prevent users deleting others’ files |
| Command           | `chmod +t directory`                 |

---