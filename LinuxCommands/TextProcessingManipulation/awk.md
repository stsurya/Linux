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
