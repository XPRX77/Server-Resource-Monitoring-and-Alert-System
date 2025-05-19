
# Automatic System Health Checkup

This PowerShell script monitors system resource usage, including CPU, memory, RAM, and network connectivity. It is designed to run automatically every 15 minutes via Task Scheduler, logging each execution for tracking purposes. Additionally, the script includes an email alert mechanism that notifies users when CPU usage exceeds a defined threshold.


## Features

✅ Resource Monitoring: Tracks CPU, memory, RAM usage, and network connectivity.

📜 Logging: Maintains logs of every execution for easy tracking.

📧 Email Alerts: Sends notifications using Mailersend's test SMTP when CPU usage crosses a threshold.

🔒 Secure Credentials: Uses CLIXML encryption for storing SMTP credentials.

⏳ Scheduled Execution: Runs automatically every 15 minutes via Windows Task Scheduler.


## Demo

Insert gif or link to demo

![Demo](Asset/Demo.gif)
## Installation

 Clone the Repository

```powershell
  git clone https://github.com/XPRX77/Auto-HealthCheck.git
```
Modify Configuration:
```powershell
  Update threshold values for CPU alerts. 

  Set SMTP credentials (stored using CLIXML encryption). 

  Adjust logging preferences if needed.
```

Schedule the Script:
```powershell
  Open Task Scheduler on Windows.

  Create a new task to run the script every 15 minutes.
  
  Set appropriate permissions
```
    
## Usage

Clone the project

```bash
  .\Automatic System Health Checkup.ps1
```

## Screenshots

✅ Execution Log (Show a sample log entry tracking CPU/memory usage)
![image](https://github.com/user-attachments/assets/e2eddc50-8af8-4dd6-95de-a9341134dbae)

✅ Test Email Alert
![image](https://github.com/user-attachments/assets/da12a373-4fa0-4781-b62f-370a5b2c0134)


## Feedback

If you have any feedback, please reach out to me at pranavkr148@protonmail.com

