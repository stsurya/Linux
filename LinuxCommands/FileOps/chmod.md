# chmod command

- The `chmod` command is used to change the access mode of a file. The name is an abbreviation of change mode. Which states that every file and directory has a set of permissions that control the permissions like who can read, write or execute the file.
- In this the permissions have three categories: read, write, and execute simultaneously represented by `r`, `w` and `x`. These letters combine together to form a specific permission for a group of users.

**Syntax:**
`chmod [options] [mode] [File_name]`

**Examples of Using the Symbolic mode:**<br>
Read, write and execute permissions to the file owner:<br>
`chmod u+rwx [file_name]`<br>

Remove write permission for the group and others:<br>
`chmod go-w [file_name]`<br>

Read and write for Owner, and Read-only for the group and other:<br>
`chmod u+rw,go+r [file_name]`<br>

- `=` operator gives the exact permissions and overwrites the exisitng permissions.<br>
  `chmod [who]=[permissions] filename`<br>
  🔹 who → u (user), g (group), o (others), a (all)<br>
  🔹 permissions → r (read), w (write), x (execute)<br>
