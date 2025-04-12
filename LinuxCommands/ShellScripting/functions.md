```
find_avg(){
len=$#
  sum=0
  for x in "$@"
do
sum=$((sum + x))
  done
  avg=$((sum/len))
return $avg
}
find_avg 30 40 50 60
printf "%f" "$?"
printf "\n"
```

- The function `find_avg()` calculates the average of the given numbers and returns it using the `return` statement.
- Since the `return` value is restricted to integers between 0 and 255, it prints the result using `$?`, which holds the exit status of the last executed command.

```
is_odd(){
  x=$1
  if [ $((x%2)) == 0 ]; then
     echo "Invalid Input"
     exit 1
  else
     echo "Number is Odd"
  fi
}
is_odd 64
```

- These functions use the `exit` command to stop the shell entirely. This can be useful for error handling or when a certain condition requires the script to stop immediately.

### return in functions:

- return is used to send exit statuses(0-225), whereas 0 indicates success and anyohter value indicates failure. So basically return command won't return values.
- Instead of return user `echo` command to return values.

```
#!/bin/bash

get_sum(){
&nbsp;echo $(($1 + $2))  # Use echo instead of return
}

echo "$(get_sum 10 20)"  # This will now correctly print 30
```
