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
