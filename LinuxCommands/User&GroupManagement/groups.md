# groupadd command

Creation of group
`sudo groupadd developers`

to view the created resource group
`sudo cat /etc/group`

# groupmod command

Changing the properties of groups.

Changing the groupname
`sudo groupmod -n newgroup oldgroup`

Changing the group ID
`sudo groupmod -g 1234 groupname`

# groupdel command

`groupdel [options] group_name`
