# What is su Command?

The su stands for (substitute user), it is a command in Linux that is used to switch from one user to another user account within the current shell session. When it is used without additional options, then it retains the current environment, including the present working directory and user-specific environment variables. It is useful for quick switching between the users without changing the existing environment setup.

# What is su – command?

The `su -` is a command in Linux, it is also known as su with a login shell. It helps in switching from one user to another user account and starts a new login shell session. This command will fully loads the target user’s environment including their login scripts, home directory, and environment variables. It is effective for simulating a full login. It is often used for administrative tasks that requires the target user’s complete environment.

## The major difference between `su` & `su -` commands in Linux

The `su` command is an abbreviation for `substitute user` because it is used for switching to another user during a normal login session, but it is often mistaken as an abbreviation for `super user` as mainly `su` command is used for getting `super user` privileges as when `su` command is run without a username, we automatically become the superuser after giving the correct root password and after that, we will enter root’s default environment, by only typing the following command:
`su`
