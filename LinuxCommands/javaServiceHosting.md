Example of hosting a **Java application as a `systemd` service**.

---

## 1. Example Java application

Assume the compiled application is:

```
/opt/myjavaapp/myapp.jar
```

Test it manually first:

```
java -jar /opt/myjavaapp/myapp.jar
```

---

## 2. Create a systemd service file

Create the service file:

```
sudo nano /etc/systemd/system/myjavaapp.service
```

---

## 3. Service configuration

```ini
[Unit]
Description=My Java Application
After=network.target

[Service]
User=ubuntu
WorkingDirectory=/opt/myjavaapp
ExecStart=/usr/bin/java -jar /opt/myjavaapp/myapp.jar
SuccessExitStatus=143
Restart=always
RestartSec=5

[Install]
WantedBy=multi-user.target
```

### Important fields

| Field                      | Meaning                       |
| -------------------------- | ----------------------------- |
| Description                | Name of the service           |
| After=network.target       | Start after network is ready  |
| User                       | User that runs the service    |
| WorkingDirectory           | Application directory         |
| ExecStart                  | Command to start the Java app |
| Restart=always             | Restart if service crashes    |
| WantedBy=multi-user.target | Start during system boot      |

---

## 4. Reload systemd

```
sudo systemctl daemon-reload
```

---

## 5. Start the service

```
sudo systemctl start myjavaapp
```

Check status:

```
sudo systemctl status myjavaapp
```

---

## 6. Enable service on boot

```
sudo systemctl enable myjavaapp
```

Now the Java application will **automatically start whenever the server boots**.

---

## 7. Check logs

```
journalctl -u myjavaapp -f
```

---

## Real-world example (Spring Boot service)

```ini
ExecStart=/usr/bin/java -Xms512m -Xmx1024m -jar /opt/app/springboot-app.jar
```

This runs a **Spring Boot microservice as a background service on Linux servers**.

---

## How companies normally run Java services

Typical architecture:

```
Java App (Spring Boot)
       │
systemd service
       │
Linux VM / EC2 / Azure VM
       │
Load Balancer / Nginx
```

---