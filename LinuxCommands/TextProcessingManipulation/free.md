The **`free`** command in Linux is used to **check system memory (RAM) usage** — total, used, free, shared, buffer/cache, and available memory.

---

## Basic Syntax

```
free [options]
```

---

## Basic Usage

```
free
```

Example output:

```
              total        used        free      shared  buff/cache   available
Mem:        8000000     2500000     1200000      150000     4300000     5000000
Swap:       2000000           0     2000000
```

---

## Most Common Options

### 1. Human-readable format (recommended)

```
free -h
```

Shows values in **MB / GB**.

Example:

```
              total   used   free  shared  buff/cache  available
Mem:           7.6G   2.4G   1.1G   150M      4.1G        4.8G
Swap:          2.0G     0B   2.0G
```

---

### 2. Show memory continuously (monitoring)

```
free -h -s 5
```

Updates every **5 seconds**.

---

### 3. Display in MB

```
free -m
```

---

### 4. Display in GB

```
free -g
```

---

## Column Meaning

| Column         | Meaning                                         |
| -------------- | ----------------------------------------------- |
| **total**      | Total RAM                                       |
| **used**       | Memory currently used                           |
| **free**       | Completely unused RAM                           |
| **shared**     | Memory used by shared processes                 |
| **buff/cache** | Cache + buffers used by OS                      |
| **available**  | Memory available for new apps (important value) |

**Important:**
Linux uses free RAM as cache for performance, so **low “free” memory is normal**. Check **available** instead.

---

## Check Swap Memory

```
free -h | grep Swap
```

---

## Common DevOps Usage

Check memory quickly:

```
free -h
```

Monitor memory during deployment:

```
watch free -h
```