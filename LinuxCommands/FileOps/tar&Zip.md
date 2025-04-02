## tar command

A common use of the Linux tar command is to create an archive of a subdirectory. For instance,
assuming there is a subdirectory named MyProject in the current directory,

In the below command, I used three options to create the tar archive:<br>
• The letter c means "create archive".<br>
• The letter v means "verbose", which tells tar to print all the filenames as they are added
to the archive.<br>
• The letter f tells tar that the name of the archive appears next (right after these
options). <br>

**syntax:**<br>
`tar [flags] archive-file-name files-to-archive`<br>
**Example:**<br>
`tar -cvf MyProject.20090816.tar MyProject`<br>

**Creating a compressed file:**<br>

`tar -czvf MyProject.20090816.tgz MyProject`<br>

As you can see, I added the 'z' flag there (which means "compress this archive with gzip"), and I
changed the extension of the archive to .tgz, which is the common file extension for files that
have been tar'd and gzip'd in one step.<br>

**tar list example:**
To list the contents of an uncompressed tar archive, just replace the c flag with the t flag, like
this:<br>
`tar -tvf my-archive.tar`<br>

To list all the files in a compressed archive, add the z flag like before:<br>
`tar -tzvf my-archive.tar.gz`<br>

**tar extract example - extracting an archive**<br>
To extract the contents of a Linux tar archive, now just replace the t flag with the x ("extract")
flag. For uncompressed archives the extract command looks like this:<br>
`tar -xvf my-archive.tar`<br>
For compressed archives the tar extract command looks like this:<br>
`tar -xzvf my-archive.tar.gz`<br>

### What is the difference between zip and tar ?

**1. Functionality**<br>
**zip:** Combines multiple files into a single compressed file and compresses them simultaneously. It creates a compressed archive, meaning it both archives (combines files) and compresses them in one step.<br>
**tar (Tape Archive):** Primarily an archiving tool that combines multiple files into a single archive file, without compression by default. If compression is needed, tar is often combined with other tools like gzip (.tar.gz) or bzip2 (.tar.bz2).<br>
**2. Compression**<br>
**zip:** Compresses each file individually inside the archive. This allows for faster access to individual files in the archive because they can be uncompressed independently.<br>
**tar:** When used with compression (e.g., tar.gz), the entire archive is compressed as a whole. This often results in better compression ratios than zip, but accessing an individual file can be slower since the entire archive needs to be decompressed first.<br>
**3. File Extensions**<br>
**zip:** Produces files with a .zip extension.<br>
**tar:** Produces a .tar file, and if compression is applied, the extensions are typically .tar.gz or .tar.bz2.<br>
**4. Compression Algorithms**<br>
**zip:** Uses the DEFLATE algorithm for compression.<br>
**tar:** When compressed, tar can use various compression algorithms, such as gzip (for .tar.gz files) or bzip2 (for .tar.bz2 files). You can also use modern compression methods like xz (.tar.xz).<br>
**5. Usage**<br>
**zip:** Commonly used for compressing and sharing files across different platforms (Linux, Windows, macOS).<br>
**tar:** Typically used on Unix/Linux systems for archiving and compressing files, especially when creating backups or transferring directories.<br>
