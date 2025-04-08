# linuxFirewall

## 🔥 What Is a Firewall in RHEL?

A **firewall** is a network security layer that **controls incoming and outgoing network traffic** based on predefined rules. In **RHEL (Red Hat Enterprise Linux)**, the default firewall management system is:

> **`firewalld`** — a dynamic firewall manager that uses zones and rules, built on top of **`iptables`** (or **nftables** in modern versions).

---

## 📦 1. Components of Firewall in RHEL

| Component             | Description                                       |
| --------------------- | ------------------------------------------------- |
| **firewalld**         | A daemon to manage firewall rules dynamically     |
| **iptables/nftables** | Backend packet filter (depending on RHEL version) |
| **Zones**             | Define trust levels and security boundaries       |
| **Services/Ports**    | Define what traffic is allowed                    |
| **Interfaces**        | Network devices (eth0, ens33) tied to zones       |
| **Rich Rules**        | Advanced rules with more fine-tuned control       |

---

## 🧱 2. How firewalld Works (Conceptual Flow)

1. **Network interface (like eth0)** is **assigned to a zone** (e.g., public, internal).
2. **Zone** contains rules: allowed **services**, **ports**, **IP sources**, etc.
3. Traffic on that interface is filtered **based on the zone’s rules**.

---

## 🔐 3. Common Zones in firewalld

| Zone         | Trust Level  | Use Case                                        |
| ------------ | ------------ | ----------------------------------------------- |
| **public**   | Low trust    | Internet-facing interface (default)             |
| **internal** | Medium trust | Internal LAN or trusted services                |
| **dmz**      | Medium trust | Servers accessible to public, like a web server |
| **trusted**  | Very high    | All traffic allowed — not recommended           |
| **drop**     | Very low     | All incoming traffic is dropped, no reply       |
| **block**    | Low          | Like drop, but replies with "reject" message    |

---

## ⚙️ 4. Practical firewalld Commands

### ✅ Check Status:

```bash
sudo firewall-cmd --state
sudo systemctl status firewalld
```

### ✅ View Active Zones:

```bash
sudo firewall-cmd --get-active-zones
```

### ✅ View Rules in a Zone:

```bash
sudo firewall-cmd --zone=public --list-all
```

---

### ✅ Open a Port (e.g., 8080):

```bash
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --reload
```

### ✅ Allow a Service (e.g., HTTP):

```bash
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --reload
```

### ✅ Block a Specific IP:

```bash
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="192.168.1.100" reject'
sudo firewall-cmd --reload
```

### ✅ Assign eth0 to internal zone:

```bash
sudo firewall-cmd --zone=internal --change-interface=eth0 --permanent
sudo firewall-cmd --reload
```

---

## 🧠 5. How firewalld Differs from iptables

| Feature             | firewalld                                | iptables                |
| ------------------- | ---------------------------------------- | ----------------------- |
| Dynamic             | Yes (no connection drop on rule changes) | No                      |
| Zones               | Yes                                      | No                      |
| Easier              | Yes (via services, zones)                | No (manual rule chains) |
| Recommended on RHEL | ✅ Yes                                   | Used as backend         |

---

## 🔐 6. Security Best Practices for firewalld in RHEL

✅ Keep default zone as **public** unless internal interface is **trusted**  
✅ Always use **`--permanent`** and reload firewall after changes  
✅ Deny all by default, then **allow only required ports/services**  
✅ Use **rich rules** for IP-based filtering  
✅ Don’t use **trusted** zone unless you're 100% sure  
✅ Backup rules regularly:

```bash
sudo firewall-cmd --runtime-to-permanent
```

---

## 💡 Example Scenario (DevOps)

You have a RHEL VM running a web app:

- Web server on **port 80/443**
- SSH only allowed from your **office IP (e.g., 203.0.113.25)**
- No other incoming connections allowed

### 👉 Configuration:

```bash
sudo firewall-cmd --zone=public --add-service=http --permanent
sudo firewall-cmd --zone=public --add-service=https --permanent
sudo firewall-cmd --permanent --add-rich-rule='rule family="ipv4" source address="203.0.113.25" port port=22 protocol=tcp accept'
sudo firewall-cmd --reload
```

---

## 📌 Summary

| Task               | Command                                                                         |
| ------------------ | ------------------------------------------------------------------------------- |
| Check active zones | `firewall-cmd --get-active-zones`                                               |
| Allow a port       | `firewall-cmd --add-port=8080/tcp --permanent`                                  |
| Block an IP        | `firewall-cmd --add-rich-rule='rule source address=1.2.3.4 reject' --permanent` |
| Apply changes      | `firewall-cmd --reload`                                                         |

---
