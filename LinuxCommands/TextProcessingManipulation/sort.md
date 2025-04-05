# sort command

The sort command in is used to sort lines of text in files or standard input. It can sort data alphabetically, numerically, or in reverse order, among other options. Here are some common usages and options for the sort command:

**Basic Syntax:**

```
sort [options] [filename]
```

**Examples:**
**Basic Sorting:** This command sorts the lines in a file alphabetically.This command does not actually change the input file, i.e. file.txt <br>
`sort file.txt`

**Sorting in Reverse Order:** To sort in reverse (descending) order, use the -r option.<br>
`sort -r file.txt`

**Sorting Numerically:** If the file contains numbers and you want to sort them numerically (not lexicographically), use the -n option.<br>
`sort -n file.txt`

**Sorting by a Specific Field (Delimiter-Based):** If the data in your file is separated by a specific delimiter (e.g., a comma or colon), you can sort by a particular field using the -t (delimiter) and -k (key/field) options. For example, to sort by the second field in a comma-separated file:<br>
`sort -t ',' -k 2 file.txt`

**Removing Duplicates:** To remove duplicate lines while sorting, use the -u (unique) option.<br>
`sort -u file.txt`

**Sorting in a Case-Insensitive Manner:** By default, sorting is case-sensitive. To sort in a case-insensitive manner, use the -f option.<br>
`sort -f file.txt`

**Sorting by Month:** To sort by month names (like Jan, Feb, etc.), use the -M option.<br>
`sort -M file.txt`

**Sorting and Saving Output to a File:** If you want to sort the contents of a file and save the sorted output to another file, you can redirect the output.<br>
`sort file.txt > sorted_file.txt`
