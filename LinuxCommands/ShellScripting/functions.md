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
