# AWK Command

- `awk` is a powerful text-processing tools used to analyze, manipulate and report files especially logs and CSV files.
- `awk` is both a command-line utility and a programming language designed for pattern scanning and processing.
- It processes input line by line, divides each line into fields, and allows you to apply actions to those fields based on conditions (patterns).<br>

**Syntax:**
`awk 'pattern { action }' filename`

- If no pattern is specified, the action is applied to all lines.<br>

**Key Concepts:**
**Fields:** Each line is split into fields using a field separator (default: space or tab).<br>

$1 = first field<br>
$2 = second field<br>
$0 = entire line<br>

**Records:** Each line is treated as a record.<br>

### example:

`cat > employee.txt`

```
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000
```

`awk '/manager/ {print}' employee.txt`

```
ajay manager account 45000
varun manager sales 50000
amit manager account 47000
```

- NR: NR command keeps a current count of the number of input records. Remember that records are usually lines. Awk command performs the pattern/action statements once for each record in a file.
- NF: NF command keeps a count of the number of fields within the current input record.
- FS: FS command contains the field separator character which is used to divide fields on the input line. The default is “white space”, meaning space and tab characters. FS can be reassigned to another character (typically in BEGIN) to change the field separator.
- RS: RS command stores the current record separator character. Since, by default, an input line is the input record, the default record separator character is a newline.
- OFS: OFS command stores the output field separator, which separates the fields when Awk prints them. The default is a blank space. Whenever print has several parameters separated with commas, it will print the value of OFS in between each parameter.
- ORS: ORS command stores the output record separator, which separates the output lines when Awk prints them. The default is a newline character. print automatically outputs the contents of ORS at the end of whatever it is given to print.
