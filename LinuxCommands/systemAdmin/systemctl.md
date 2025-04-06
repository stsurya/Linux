# systemctl

## what is systemctl ?

- This command is used to control the systemd system and service manager which is the central component in moder linux distributions.

`systemctl [command] [unit]`

- command: Action to be performed (e.g., start, stop, restart, enable, disable).
- unit: The service or unit to be affected.

## What is a Service ?

- A service in computing is a background process that performs specific tasks and functions without user intervention.
- Services often start automatically during system boot and run continuously to provide functionalities such as web serving, file sharing, or system monitoring
- They are managed by the operating system and can be started, stopped, or restarted as needed.

## What is a daemon ?

A daemon is a background process that runs continuously on a Linux or Unix system. It performs tasks without direct user interaction, often starting automatically at boot.

## What is the init system?

The init system is the first process that runs when a Linux system boots up and is responsible for initializing the system. It manages system services and processes, handling their start, stop, and restart. Common init systems include SysVinit, Upstart, and systemd. The init system ensures that all necessary services are running correctly and manages dependencies between them. It continues to run in the background to monitor and manage system processes throughout the system’s operation.
