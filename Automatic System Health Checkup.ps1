#$timestamp = Get-Date -Format 'yyyy-mm-dd HH:mm:ss'
$logfile = "C:\Users\Pranav Pramod\Desktop\IDK\Project\Automatic System Health Checkup\Log.txt"

# Import the credential securely
$credential = Import-Clixml -Path "C:\Users\Pranav Pramod\Desktop\IDK\Project\Automatic System Health Checkup\Secure\creds.xml"

Add-Content -Path $logfile -Value "-----------------------------------------------------------------------------------------"

Write-Output "System Health Check - $(Get-Date)"
Add-Content -Path $logfile -Value "System Health Check - $(Get-Date)"

#CPU Usage
$cpu = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples[0].CookedValue
Write-Output "CPU Usage: $cpu%"
Add-Content -Path $logfile -Value "CPU Usage: $cpu%"

#Ram Usage
$ram = (Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1024
Write-Output "Ram Usage: $ram MB"
Add-Content -Path $logfile -Value "Ram Usage: $ram MB"

#Disk Usage
$disk = Get-PSDrive C | Select-Object Used, Free
$used_mb = [math]::Round($disk.Used / 1GB, 2)
$free_mb = [math]::Round($disk.Free / 1GB, 2)
Write-Output "Disk Usage: $used_mb GB Used, $free_mb GB Free"
Add-Content -Path $logfile -Value "Disk Usage: $used_mb GB Used, $free_mb GB Free"

#Network Check
Test-Connection -ComputerName google.com -Count 1 -Quiet | Out-Null
$val = if ($?) { Write-Output "Network: Connected" } Else { Write-Output "Network: Disconnected" }
Write-Output $val
Add-Content -Path $logfile -Value $val

# Email parameters
$smtpServer = "smtp.mailersend.net"
$smtpPort = 587
$from = "alert@test-3m5jgro922ogdpyo.mlsender.net"
$to = "pranavkr148@protonmail.com"

$threshold = 80

if ($cpu -gt $threshold) {
    $subject = "ALERT: High CPU Usage - $cpu%"
    $body = "Warning! CPU usage is at $cpu% which is above the threshold of $threshold%."

    Send-MailMessage -From $from -To $to -Subject $subject -Body $body `
        -SmtpServer $smtpServer -Port $smtpPort -UseSsl -Credential $credential

    Write-Output "Mail-sent"
}