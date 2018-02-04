# pfSense Backup Bash Script

This is a small bash script to allow scheduled backups of pfSense. Simply add your public SSH key to your pfSense installation to allow for passwordless copying and add this script to a cron job.

Please update the variables defined at the top of the script to suit your requirements.

Backup files will be stored with the hostname, date and time in the defined backup path.
