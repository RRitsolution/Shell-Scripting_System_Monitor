🚀 Shell Scripting | System Monitoring

A lightweight Linux system monitoring script written in Bash to check CPU and Memory usage and send alerts when thresholds are exceeded.

Features

Monitors CPU usage using top

Monitors Memory usage using free -h

Custom threshold variables

Automatic email alerts

Clean terminal output for normal conditions# Shell-Scripting_System_Monitor This repository is for Linux system monitor and send alert if cpu/memory cross defined threshold.

Note- 1.For sending alert ,Need to configure email setup .

I have also shared all steps for gmail setup with file name-emailgmailsetup.txt in gitHub repository.

Example for CPU high load and sending alert to configured email :-


2.To automate the entire process, open the crontab using crontab -e and add the following entry to run the script every hour:
0 * * * * /path/to/systemmonitoring.sh

![Mail snip alert](https://github.com/user-attachments/assets/a775171a-1c00-4a23-a220-99b2ff8024bd)

<img width="552" height="42" alt="image" src="https://github.com/user-attachments/assets/2a842020-a918-4b33-aa51-7390f26234fc" />

