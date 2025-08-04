# 🖥️ Server Stats Script

A simple Bash script to analyze basic server performance statistics on any Linux system.
a project from the road map projects:
https://roadmap.sh/projects/server-stats

## 📋 Features

The `server-stats.sh` script provides the following information:

- ✅ **CPU Usage** — Total CPU usage percentage.
- ✅ **Memory Usage** — Used vs free memory (including percentage).
- ✅ **Disk Usage** — Used vs free disk space (including percentage).
- ✅ **Top Processes by CPU** — Top 5 processes consuming the most CPU.
- ✅ **Top Processes by Memory** — Top 5 processes consuming the most memory.

### 🧪 Optional Stretch Features
These are included for deeper insight into your system (optional but useful):

- 🖥️ OS version
- ⏱️ System uptime
- ⚖️ Load average
- 👤 Logged-in users
- ❌ Failed login attempts

## 🚀 Getting Started

### Prerequisites

- A Linux system (Ubuntu, CentOS, Debian, etc.)
- Bash shell

### Usage

1.Clone the repository:

```bash
git clone https://github.com/MosabAwadAhmedAlhadi/ServerPerformanceStats.git
cd ServerPerformanceStats
```

2.Make the script executable:
```bash
chmod +x server-stats.sh
```
3.Run the script:
```bash
./server-stats.sh
```


📂 ## **Sample Output**

```yaml
==== Server Performance Stats ====

---- CPU Usage ----
CPU Usage: 4.2%

---- Memory Usage ----
Used Memory: 2651648
Free Memory: 5282296
Usage Percentage: (33.42%)

---- Disk Usage ----
Used disk space: 64G
Free disk space: 68G
Total disk space: 138G
Usage Percentage: 49%

---- Top 5 Processes by CPU Usage ----
    PID COMMAND         %CPU
   7362 ps               300
   3798 firefox          5.1
   5134 Isolated Web Co  4.2
   2961 gnome-shell      3.4
   4077 Isolated Web Co  1.1

---- Top 5 Processes by Memory Usage ----
    PID COMMAND         %MEM
   3798 firefox          6.5
   4077 Isolated Web Co  5.7
   5134 Isolated Web Co  5.4
   2961 gnome-shell      3.9
   4860 Isolated Web Co  2.4

---- OS Version ----
Ubuntu 24.04.1 LTS

---- Uptime ----
up 1 hour, 39 minutes

---- Load Avarage ----
0.66, 0.40, 0.33

---- Logged-In Users ----
username

---- Failed Login Attempts ----
Number of failed login attempts: 0

```
