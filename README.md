Automatic System Health Checkup


Overview
This PowerShell script monitors system resource usage, including CPU, memory, RAM, and network connectivity. It is designed to run automatically every 15 minutes via Task Scheduler, logging each execution for tracking purposes. Additionally, the script includes an email alert mechanism that notifies users when CPU usage exceeds a defined threshold.

Features
✅ Resource Monitoring: Tracks CPU, memory, RAM usage, and network connectivity.

📜 Logging: Maintains logs of every execution for easy tracking.

📧 Email Alerts: Sends notifications using Mailersend's test SMTP when CPU usage crosses a threshold.

🔒 Secure Credentials: Uses CLIXML encryption for storing SMTP credentials.

⏳ Scheduled Execution: Runs automatically every 15 minutes via Windows Task Scheduler.

Installation & Setup
Clone the Repository:

powershell
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
Modify Configuration:

Update threshold values for CPU alerts.

Set SMTP credentials (stored using CLIXML encryption).

Adjust logging preferences if needed.

Schedule the Script:

Open Task Scheduler on Windows.

Create a new task to run the script every 15 minutes.

Set appropriate permissions.



✅ Execution Log (Show a sample log entry tracking CPU/memory usage)
![image](https://github.com/user-attachments/assets/e2eddc50-8af8-4dd6-95de-a9341134dbae)

✅ Test Email Alert
![image](https://github.com/user-attachments/assets/da12a373-4fa0-4781-b62f-370a5b2c0134)
