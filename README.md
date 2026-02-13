# 🛡 Cyber Operation-X Sentinel  
Hybrid Bash + Python Threat Hunting & Response Framework

![Linux](https://img.shields.io/badge/platform-Linux-blue)
![Bash](https://img.shields.io/badge/language-Bash-green)
![Python](https://img.shields.io/badge/language-Python-yellow)
![Security](https://img.shields.io/badge/domain-Cyber%20Security-red)

---

## 📌 Project Overview

**Cyber Operation-X Sentinel** is a hybrid threat hunting and response framework designed for Linux environments.  

It combines:

- 🔎 Bash-based system monitoring
- 🧠 Python-powered risk scoring engine
- 📊 Automated report generation
- 🧩 Modular detection architecture

The project is designed for:

- Blue Team labs
- SOC simulation environments
- Threat hunting practice
- Cybersecurity portfolio demonstration
- Linux security automation research

---

## 🏗 Architecture

```
                +------------------+
                |  sentinel.sh     |
                |  (Main Controller)|
                +--------+---------+
                         |
        ---------------------------------------
        |         |          |         |       |
    Process   Network     Auth Logs  Persistence
    Monitor    Monitor     Analysis     Check
     (Bash)      (Bash)      (Bash)     (Bash)
        ---------------------------------------
                         |
                  Detection Results
                         |
                 +------------------+
                 |  risk_engine.py  |
                 |  (Risk Logic)    |
                 +--------+---------+
                         |
                 +------------------+
                 | report_generator |
                 +------------------+
                         |
                    Final Report
```

---

## 📂 Project Structure

```
cox-sentinel/
│
├── sentinel.sh
├── install.sh
├── requirements.txt
├── README.md
│
├── config/
│   └── config.conf
│
├── modules/
│   ├── process_monitor.sh
│   ├── network_monitor.sh
│   ├── auth_monitor.sh
│   └── persistence_check.sh
│
├── python/
│   ├── risk_engine.py
│   ├── report_generator.py
│   └── utils.py
│
├── logs/
├── reports/
└── data/
    └── baseline_hashes.txt
```

---

## 🔍 Detection Modules

### 1️⃣ Process Monitoring
- Detects high CPU usage
- Identifies suspicious running processes
- Flags abnormal execution patterns

### 2️⃣ Network Monitoring
- Monitors active TCP connections
- Detects abnormal connection volume
- Identifies unusual network behavior

### 3️⃣ Authentication Log Analysis
- Parses `/var/log/auth.log`
- Detects brute-force attempts
- Monitors failed login thresholds

### 4️⃣ Persistence Detection
- Checks cron jobs
- Reviews enabled services
- Identifies suspicious startup mechanisms

---

## 🧠 Risk Engine Logic

Each detection module contributes to a cumulative risk score.

| Module        | Risk Weight |
|--------------|------------|
| Process      | 25 |
| Network      | 25 |
| Authentication | 25 |
| Persistence  | 25 |

### Severity Levels

| Score Range | Severity |
|------------|----------|
| 0–24       | LOW |
| 25–49      | MEDIUM |
| 50–74      | HIGH |
| 75–100     | CRITICAL |

The Python risk engine consolidates module alerts and generates a final system risk assessment.

---

## ⚙ Installation Guide

### 1️⃣ Clone Repository

```bash
git clone https://github.com/Souvik-200/Cyber-Operation-X-Sentinel-.git
cd cox-sentinel
```

### 2️⃣ Set Permissions

```bash
chmod +x sentinel.sh
chmod +x install.sh
chmod +x modules/*.sh
```

### 3️⃣ Install Dependencies

```bash
sudo apt update
sudo apt install python3 python3-pip -y
```

### 4️⃣ Create Required Directories

```bash
mkdir -p logs reports
```

---

## 🚀 Running the Framework

Execute the full system scan:

```bash
sudo ./sentinel.sh
```

> ⚠ Root privileges are recommended for log access and network inspection.

---

## 📊 Example Output

```
Starting Cyber Operation-X Sentinel...
Risk Score: 75
Severity: CRITICAL
Report Generated: reports/report_20260213_193012.txt
Scan Completed.
```

Generated reports are stored in:

```
reports/
```

---

## 🛠 Manual Module Execution

You can test modules individually:

```bash
bash modules/process_monitor.sh
bash modules/network_monitor.sh
sudo bash modules/auth_monitor.sh
bash modules/persistence_check.sh
```

Run risk engine manually:

```bash
python3 python/risk_engine.py logs/detection_results.json
python3 python/report_generator.py
```

---

## 🎯 Key Features

- Modular architecture
- Hybrid Bash + Python integration
- Risk-based threat classification
- Automated report generation
- Lightweight and dependency-minimal
- Designed for Linux environments

---

## 🔐 Security Notice

This project is intended strictly for:

- Educational use
- Lab environments
- Defensive security research

Do not deploy in production environments without proper testing and security review.

---

## 🔮 Future Improvements

- SQLite logging database
- Web dashboard (Flask-based UI)
- Real-time monitoring mode
- Telegram alert integration
- Threat intelligence API integration
- Dockerized deployment
- SIEM log forwarding
- AI-based anomaly detection
- Auto-response and IP blocking module

---

## 📚 Learning Outcomes

This project demonstrates:

- Linux system internals understanding
- Threat detection logic design
- Risk modeling methodology
- Hybrid scripting integration
- Modular security architecture
- SOC automation fundamentals

---

## 👤 Author

**Souvik Sarkar**  
Founder — Cyber Operation-X  

Cybersecurity | Threat Hunting | SOC Automation | Security Research

---

## 📄 License

This project is released for educational and research purposes.
