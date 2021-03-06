# Extract IPs from Dionaea

Extract IPs from daily dionaea bistream logs and group them by protocol. The output includes only unique IPs for each protocol (no duplicates per protocol per daily log).

### Usage

Make the script executable: <br/>
```sudo chmod +x extractIPs.sh```

To run the script for all services:<br/>
```./extractIPs.sh --all```<br/>

- `--all ` = check all protocols/services that were logged <br/>

To run the script for specific services:<br/>
```./extractIPs.sh <service_name1> <service_name2> <service_name3>...<service_nameN>```<br/>

- `<service_nameN>` = the particular service name you want to check

To set up daily collection at 11:59 PM:<br/>
```sudo nano /etc/crontab```<br/>
```59 23   * * *   root  <your_path_to_file>/extractIPs.sh --all  > /dev/null 2>&1```<br/>

By default, the script saves the results file (YYYY-MM-DD_IPs.txt) in the ubuntu user's home directory. 
