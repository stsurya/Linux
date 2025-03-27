# PWD Command

- The ‘pwd,’ which stands for “print working directory.”

**Syntax:**<br>
`pwd [OPTIONS]`

- The default behavior of Built-in `pwd` is the same as `pwd -L`. Using `pwd -L` to obtain the symbolic path of a directory containing a symbolic link.

- The default behavior of `/bin/pwd` is the same as `pwd -P`. Utilizing `pwd -P` to display the actual path, ignoring symbolic links.

- The `$PWD` environment variable is a dynamic variable that stores the path of the current working directory. It holds the same value as `pwd -L` – representing the symbolic path.
