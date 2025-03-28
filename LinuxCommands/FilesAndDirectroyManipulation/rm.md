# rm Command

- rm stands for remove here.

- By default, it does not remove directories. This command normally works silently and you should be very careful while running rm command because once you delete the files then you are not able to recover the contents of files and directories.

**Syntax:**
`rm [OPTION]... FILE...`

### safety precautions when using rm:

- Use interactive mode: `rm -i filename.txt`.<br>

- Check with dry run: For recursive deletion, you might list files with ls first to see what’s in the directory or use the echo command to see which files rm would delete:Avoid running as superuser: Running rm as the root user can lead to disastrous results, especially if used improperly. Always double-check which user is executing the rm command.<br>

- Backup important data: Before running a risky rm operation, make sure important data is backed up in a different location.<br>

- Alias with safety nets: Some users alias `rm` to safer variants like `rm -i` to always prompt for confirmation. You can set this alias in your shell configuration file (e.g., .bashrc):<br>
