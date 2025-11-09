🧠 Bash System Maintenance Suite (Capstone Project)

**Developer:** Sai Kiran Patra 
**Course:** Linux OS & LSP  
**Project Type:** Bash Scripting Automation  

---

## 📘 Project Overview
The **Bash System Maintenance Suite** automates essential Linux administrative tasks using Bash scripting.  
It provides a menu-driven interface to simplify system maintenance while generating detailed logs for every operation.

### 🔧 Key Functionalities
- 🗂️ Automated file and system backups  
- ⚡ System updates and cleanup  
- 🔍 Log monitoring for warnings, errors, or critical events  
- 🧮 Interactive menu to run all tasks easily  
- 🧾 Centralized log storage and optional cron-based automation  

---

## 🎯 Objectives
- Automate repetitive Linux maintenance operations  
- Reduce human error in manual updates and backups  
- Provide quick system feedback using logs  
- Demonstrate process automation and error handling in Bash  

---

## 🧩 Technologies Used
- 🐧 **Bash Scripting**  
- 🖥️ **Linux Command-line (Ubuntu / WSL)**  
- ⏰ **Cron Automation (Optional)**  
- ⚙️ **System Administration Tools**

---

## 🧱 Project Structure

```markdown
bash-system-maintenance-suite/
│
├── backup.sh              # Automates system backups with timestamp
├── update_cleanup.sh       # Updates and cleans the system
├── log_monitor.sh          # Monitors system logs for warnings/errors
├── maintenance_suite.sh    # Interactive menu-driven main script
│
├── maintenance_logs/       # Directory for storing log files (auto-created)
│   ├── suite_YYYY-MM-DD.log    # Daily suite logs
│   ├── backup.log              # Backup script logs
│   ├── update_cleanup.log      # Update & cleanup logs
│   ├── log_alerts.log          # Log monitoring alerts
│   └── cron_run.log            # Logs from scheduled (cron) runs
│
└── README.md               # Project documentation

⚙️ Setup Instructions

1️⃣ Clone the Repository
bash
Copy code
git clone https://github.com/SaiZollard/Bash-Scripting-Suite-for-System-Maintenance
cd bash-system-maintenance-suite

2️⃣ Make Scripts Executable
bash
Copy code
chmod +x *.sh

3️⃣ Run the Suite
bash
Copy code
./maintenance_suite.sh

🧮 Example Output
markdown
Copy code
======================================
        SYSTEM MAINTENANCE SUITE
======================================
1. Run Backup
2. Update and Clean System
3. Monitor Logs
4. View Suite Log
5. Exit
--------------------------------------
Enter your choice [1-5]: 1

[2025-11-07 13:23:29] Running backup script...
[2025-11-07 13:23:29] [SUCCESS] Backup created successfully at: ~/backups/backup_2025-11-07_13-23-29.tar.gz
[2025-11-07 13:23:29] Backup completed successfully.
⏰ Automate with Cron (Optional)
To schedule the suite to run automatically every day at 1 AM:

bash
Copy code
crontab -e
Add this line:

bash
Copy code
0 1 * * * /home/saiki/maintenance_suite/maintenance_suite.sh >> /home/saiki/maintenance_logs/cron_run.log 2>&1
✅ This will execute the suite daily and store all logs in cron_run.log.

🧠 Developer Notes
This project demonstrates:

Linux shell scripting for automation

File and process management in Bash

Error handling and logging mechanisms

Clean modular design for easy maintenance

💡 Possible Enhancements
Add email or desktop alerts

Implement cloud backups (Google Drive/AWS)

Auto-delete logs older than 7 days

GUI version using Zenity or Whiptail

🏁 Conclusion
The Bash System Maintenance Suite successfully automates vital Linux system maintenance tasks like backups, updates, and log monitoring.
It improves reliability, reduces manual workload, and maintains detailed logs for each run.

This project demonstrates Bash scripting best practices and serves as a foundation for advanced Linux automation.

© 2025 Sai Kiran Patra
Linux OS & LSP — Capstone Project
