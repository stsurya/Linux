# Find Command

`Find` command in linux is used to search files and directories recursively looking for files that match given criteria such as name, size, modification time, permissions, and more.

**Syntax:**
`find [path] [options] [expression]`

**path:** Starting directory for the search.<br>
**Example:** find /path/to/search<br>

✅ Recursively means `find` searches inside subdirectories automatically.<br>
✅ You don’t have to manually specify subdirectories.<br>
✅ You can limit recursion using -maxdepth and -mindepth.<br>

- It cannot by default search in parent directory or go one step backward.<br>
  But below are the ways you can use to search in parent directory.<br>

if you're in `/home/user/Documents` and want to search for files in `/home/user/Downloads`<br>

`find ../Downloads -name "*.txt"` or `find /home/user/Downloads -name "*.txt"`

## Searching in multiple folders

`find ../Documents ../Downloads -name "filename.txt"`

## Seaching in current directory

`find ./ -name "*txt"`

## listing all empty files

`find ./ -empty`

## Searching for files with specific permissions

- This command is used to locate files within a directory that have specific permissions.<br>
  `find ./ -perm 777`<br>
  ❌ No, you cannot directly use symbolic permission values (rwx) in find -perm.<br>
  ✅ You must use numeric (octal) values like 777, 664, 755, etc.<br>

# Locate Command

- `locate` command quickly searches for files by name using a prebuild database.
- `locate` command doesn't care about your current directory.It searches the entire indexed database, which includes paths like /etc, /home, /usr, etc.You don’t give it a path — you just give it a file name or pattern.

`locate file_name`

**⚡ Pros:**

- Super fast because it doesn't search the disk in real time.
- Good for quick name-based lookups.

**⚠️ Cons:**

- Might be outdated if files were recently added/deleted.
- Doesn't let you filter by size, date, permissions, etc.
