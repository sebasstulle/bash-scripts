
# Bash Scripts

Diagnostic and automation scripts for Linux systems administration.
Written and tested on Debian 12 in a home lab environment.

---

## Scripts

| Script | What it does |
|--------|-------------|
| [check-ports.sh](check-ports.sh) | Shows open TCP ports and the process behind each one |

---

## check-ports.sh

Shows what TCP ports are currently open on the system and which process is listening on each one.
Useful for quick network diagnostics and verifying what services are exposed.

    ./check-ports.sh

Example output:

    === Open ports and listening services ===

    STATE      PORT                    PROCESS
    LISTEN     0.0.0.0:22              users:(("sshd",pid=917,fd=6))
    LISTEN     127.0.0.1:25            users:(("exim4",pid=1228,fd=5))

    Done.

---

*Environment: Debian 12 · VirtualBox 7*  
*Updated as new scripts are added.*
