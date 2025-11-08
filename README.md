🧰 Bash Scripting Suite for System Maintenance (Capstone Project)
Developer: Sai Kiran

Course: Linux OS & LSP
Project Type: Bash Scripting Automation

📘 Project Overview
This project is a Bash Scripting Suite for System Maintenance that automates essential administrative tasks such as:

Automated system backups

System updates and cleanup

Log file monitoring for warnings or errors

Combined maintenance suite to execute all tasks efficiently

The suite ensures efficient system upkeep, reduces manual effort, and maintains comprehensive logs for every operation.

🎯 Objectives

Automate repetitive Linux maintenance operations

Minimize manual errors in updates and backups

Provide system health feedback through detailed logs

Demonstrate shell scripting, process automation, and log handling

🧩 Technologies Used

Bash Scripting

Linux Command-line Interface

Cron Job Scheduling (optional automation)

Core System Administration Tools

🧩 Project Structure

linux-maintenance-suite/
│
├── backup.sh          # Automates system backup with timestamp
├── update.sh          # Updates and cleans the system
├── logmonitor.sh      # Monitors system logs for warnings/errors
├── menu.sh            # Interactive menu for the suite
│
├── maintenance_logs/  # Directory for storing logs (auto-created)
└── README.md          # Project documentation
⚙️ Setup Instructions

Clone the Repository

bash
Copy code
git clone https://github.com/DevAshuTosh10/Linux-maintenance-suite-Capstone-Proj-5-Ashutosh_Satpathy.git
cd Linux-maintenance-suite-Capstone-Proj-5-Ashutosh_Satpathy
Make Scripts Executable

bash
Copy code
chmod +x *.sh
Run the Suite

bash
Copy code
./menu.sh
Backup Directory
The backups will be stored in:

bash
Copy code
/backup/daily/
Logs
Logs for every session are stored under:

bash
Copy code
~/maintenance_logs/
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
[2025-11-07 13:23:29] [SUCCESS] Backup created successfully at: /backup/daily/backup_2025-11-07_13-23-29.tar.gz
[2025-11-07 13:23:29] Backup completed successfully.
🧠 Developer Notes
This capstone project demonstrates:

Linux shell scripting for automation

File system management

Error handling and logging mechanisms

Clean modular design for maintainability

🏁 Conclusion
The Bash Scripting Suite for System Maintenance effectively automates essential Linux system maintenance tasks, improving efficiency, reliability, and administrative productivity.
The modular structure makes it easily extendable for advanced features such as email notifications, remote monitoring, or cloud-based backups.

© 2025 Sai Kiran Patra
Linux OS & LSP — Capstone Project
