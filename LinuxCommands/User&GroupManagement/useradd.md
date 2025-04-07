# useradd

`useradd` is a command in Linux that is used to add user accounts to your system. It is just a symbolic link to `adduser` command in Linux and the difference between both of them is that `useradd` is a native binary compiled with the system whereas `adduser` is a Perl script that uses useradd binary in the background. <br>

It makes changes to the following files:<br>

/etc/passwd<br>
/etc/shadow<br>
/etc/group<br>
/etc/gshadow<br>
creates a directory for new user in /home<br>

- `sudo useradd <username>` won't ask for password and other details. This is non-interactive.<br>
- `sudo adduser <username>` will ask for passowrd and it is more user-friendly and suitable for standard user setups.

Note: To execute useradd command you need to have sudo access.

## Automation script to create a user

```
#!/bin/bash

# Check if running as root
if [[ $EUID -ne 0 ]]; then
   echo "❌ Please run as root"
   exit 1
fi

# Get username as input
read -p "Enter the new username: " username

# Check if user already exists
if id "$username" &>/dev/null; then
    echo "⚠️ User '$username' already exists!"
    exit 1
fi

# Create user and home directory
useradd -m "$username"

# Set password
read -s -p "Enter password for $username: " password
echo
echo "$username:$password" | chpasswd

# Add to sudo group
usermod -aG sudo "$username"

# Force password change on first login
chage -d 0 "$username"

echo "✅ User '$username' created and added to sudo group."
```

## Creating a user with expiry date

`sudo useradd -e 2025-09-21 test_user`

## Create User with a Comment

`sudo useradd -c "This is a test user" test_user`

## Set Password Expiration to 90 Days

`sudo chage -M 90 user_name`

## Set a Warning Period Before Expiration

`sudo chage -W 7 user_name`

## changing user password

`passwd username`

## lock a user account

`passwd -l username`

## Unlock a user account

`passwd -u username`
