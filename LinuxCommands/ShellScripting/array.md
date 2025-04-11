Explicit declaration of array:

`declare -a ArrayName`

arr=(1 2 3 4 "str1") <br>

- There should be no commans in array.<br>
- `echo ${arr[@]}` --> print all the elements of array.<br>
- `echo ${arr[0]}` --> print 0 index.<br>
- `echo ${str:0:15}` --> Fetching substring.<br>
- `echo ${#str}` --> Length of string.
- `echo ${#arr[@]}` --> Length of an array.
- In bash, `{array_name}` is not treated as the whole array. It is equivalent to `${array_name[0]}` — i.e., the value at index 0 only.
- Because Bash doesn’t treat the variable pr alone as representing the entire array. Unlike higher-level languages (like Python or JavaScript), Bash doesn’t automatically expand full arrays unless explicitly told using [@] or [*].
- `echo ${arr[@]:2}` --> Printing elements from index 2.
- `echo ${arr[@]:1:3}` --> Printing elemtns form index 1 to 3. Inclusive of index 3.
- `unseet ${arr[0]}` --> Deleting an element from array at index 0.
