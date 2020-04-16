# Extract IPs from Dionaea

Extract IPs from dionaea bistream logs and group them by protocol. The output includes only unique IPs for each protocol (no duplicates per protocol).

### Usage

The usage below assumes the script is in the bistreams directory of the dionaea honeypot.

Make the script executable: <br/>
```sudo chmod +x extractIPs.sh```

Change directory to the bistream logs you want to check. <br/>
Ex: <br/>
```cd 2020-01-01```<br/>

Run the script for all services:<br/>
```../extractIPs.sh --all```<br/>

- `--all ` = check all protocols/services that were logged <br/>

Run the script for specific services:<br/>
```../extractIPs.sh <service_name1> <service_name2> <service_name3>...<service_nameN>```<br/>

- `<service_nameN>` = the particular service name you want to check

Logic of the script places the output file in the user's home directory. 
