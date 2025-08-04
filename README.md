# 🖥️ Server Stats Script

A simple Bash script to analyze basic server performance statistics on any Linux system.

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

1. Clone the repository:

```bash
git clone https://github.com/MosabAwadAhmedAlhadi/ServerPerformanceStats.git
cd ServerPerformanceStats
chmod +x server-stats.sh
