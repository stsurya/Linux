The `kill` command in Linux and Unix-like systems is used to terminate processes. It sends a signal to a process, which can be used to stop or forcefully kill it.

### **Syntax**

```
kill [options] <PID>
```

### **Common Signals**

| Signal    | Number | Description                                      |
| --------- | ------ | ------------------------------------------------ |
| `SIGTERM` | 15     | Gracefully terminates a process (default signal) |
| `SIGKILL` | 9      | Forcefully kills a process                       |
| `SIGSTOP` | 19     | Pauses a process                                 |
| `SIGCONT` | 18     | Resumes a stopped process                        |

### **Usage Examples**

1. **Kill a process by PID (Graceful Termination)**

   ```
   kill 1234
   ```

   - Sends `SIGTERM` (default signal) to process with PID `1234`.

2. **Forcefully kill a process**

   ```
   kill -9 1234
   ```

   - Sends `SIGKILL` to forcefully terminate the process.

3. **Kill multiple processes**

   ```
   kill -9 1234 5678
   ```

   - Kills processes `1234` and `5678`.

4. **Kill all processes by name**

   ```
   killall firefox
   ```

   - Terminates all processes with the name `firefox`.

5. **Find and kill a process by name**

   ```
   pkill -9 python
   ```

   - Kills all processes running Python.

6. **Kill a process using `htop` or `top`**
   - Run `htop` or `top`, find the process, and press `F9` (Kill).
