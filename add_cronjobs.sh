#!/bin/bash
echo "Adding watchdog cron jobs..."
crontab -l -u pi | cat - cronjobs | crontab -u pi -

