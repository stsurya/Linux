# scp command

- Whether moving sensitive files between local machines or transferring data between servers, SCP (Secure Copy Protocol) provides a fast, secure, and efficient way to copy files over a network.
- By utilizing SSH (Secure Shell), SCP ensures that your file transfers are encrypted and protected against eavesdropping.
- Whether copying files from your local machine to a remote server or transferring files from one Linux machine to another, SCP ensures that the process is safe and fast.

**Syntax:**
`scp [options] [[user@]host1:]source_file_or_directory ... [[user@]host2:]destination`

Securely Copy Files from Local to Remote Machine<br>
`scp [file_name]  remoteuser@remotehost:/remote/directory`<br>
From Remote Host to Local Machine<br>
`scp user@remotehost:/home/user/file_name`<br>

- please make sure you've enough read/write permissions to do copy file and check the remote server is reachable or not.
