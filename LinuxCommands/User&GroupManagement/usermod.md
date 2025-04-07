# usermod

After creating a user we've sometimes to change their attributes like password or directory e.t.c. So in order to do that we use the Usermod command.

The information of a user is stored in the following files:<br>

/etc/passwd<br>
/etc/group<br>
/etc/shadow<br>
/etc/login.defs<br>
/etc/gshadow<br>
/etc/login.defs<br>

**Note:** usermod command needs to be executed only as a root user.

## to change the home direcotry of user

`sudo usermod -d /home/surya test_user`

## to change the group of user

`sudo usermod -g gropuname test_user`

## to change user login name

`sudo usermod -l test_account test_user`
