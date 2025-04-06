# sed command

The `sed` command is a text manipulation tool used to perform basic text transformations and advanced operations such as find and replace, text insertion, deletion and substitution.

**Syntax:**
`sed [options] command [input file]`

### Examples:

`sed s/old_word/new_word/ file.txt`

- Here the 's' specifies the substitution, '/' is delimiter. By default `sed` replace the fist occurenece of old_word in the line not the second, third and fourth....

`sed s/old_word/new_word/2 file.txt`

- Replacing only the 2nd occurence of old_word with new_word.

`sed s/old_word/new_word/g file.txt`

- The substitute flag /g (global replacement) specifies the sed command to replace all the occurrences of the string in the line.

`sed 's/unix/linux/3g' geekfile.txt`

- Replacing from 3rd occurence in line.
