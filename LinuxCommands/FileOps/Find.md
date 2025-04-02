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
