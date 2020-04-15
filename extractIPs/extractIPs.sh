#!/bin/bash

#get name of current directory to use as filename
filename=$(basename $(pwd))  
filename+="_IPs.txt"

#extract ftp scanner IPs
echo "FTP Port 21 Scanners:" | tee -a ~/$filename 
ls | grep "ftpd" | grep -oE "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u | tee -a ~/$filename
echo -e '\n' | tee -a ~/$filename

#extract mssql scanner IPs
echo "MSSQL Port 1433 Scanners:" | tee -a ~/$filename
ls | grep "mssqld" | grep -oE "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u | tee -a ~/$filename
echo -e '\n' | tee -a ~/$filename

#extract mysql scanner IPs
echo "MySQL Port 3306 Scanners:" | tee -a ~/$filename
ls | grep "mysqld" | grep -oE "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u | tee -a ~/$filename
echo  -e '\n' | tee -a ~/$filename

#extract smb scanner IPs
echo "SMB Port 445 Scanners:" | tee -a ~/$filename
ls | grep "smbd" | grep -oE "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u | tee -a ~/$filename
echo -e '\n' | tee -a ~/$filename
