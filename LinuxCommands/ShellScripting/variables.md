# Variables

## Defining variables

`variable_name=<variable_value>`

## Unsetting Variables

`unset variable_name`

## readonly variables

`readonly variable_name`

- These variables are read only i.e., their values could not be modified later in the script.

## Variable Types

**1. Local Variable:**
Variables which are specific to the current instance of shell. They are basically used within the shell, but not available for the program or other shells that are started from within the current shell.

`name=Jayesh`

In this case the local variable is (name) with the value of Jayesh. Local variables is temporary storage of data within a shell script.

**2. Environment Variable:**
These variables are commonly used to configure the behavior script and programs that are run by shell. Environment variables are only created once, after which they can be used by any user.

`export PATH=/usr/local/bin:$PATH` would add `/usr/local/bin` to the beginning of the shell’s search path for executable programs.

- Each variable is by default treated as a string in bash.
