## processCommands

- In Linux, a process is a running instance of a program. When you execute a program, it becomes a process, an independent,executing entity with its own memory space.

- The `ps` command, which stands for `process status`.
- `ps` command let's you take a quick look at all the processes which are running.
- `top` command is a dynamic and interactive tool that provides real-time information about system processes. It offers a comprehensive view of running processes, system resource utilization, and other critical system metrics.

**Process-related information including:**

PID: Process ID<br>
USER: Owner of the process<br>
PR: Priority<br>
NI: Nice value<br>
VIRT: Virtual memory usage<br>
RES: Resident set size (non-swapped physical memory used)<br>
SHR: Shared memory<br>
S: Process status (S: Sleeping, R: Running, I: Idle)<br>
%CPU: Percentage of CPU usage<br>
%MEM: Percentage of memory usage<br>
TIME+: Total CPU time<br>
COMMAND: Command or process name<br>

- `htop` is an interactive process viewer for Linux that provides a visually appealing and feature-rich alternative to the traditional `top` command.<br>

- `atop` is a powerful and interactive system and process monitor for Linux that provides detailed information about system resources and processes.<br>

**Summary:**For instance, ps provides a snapshot of processes, while top and htop offer real-time monitoring. atop gives detailed insights, and pgrep finds processes based on criteria.
