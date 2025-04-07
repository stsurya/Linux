# useradd

- `sudo useradd <username>` won't ask for password and other details. This is non-interactive.
- `sudo adduser <username>` will ask for passowrd and it is more user-friendly and suitable for standard user setups.

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
