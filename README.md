# Extract IPs from Dionaea

Extract IPs from dionaea bistream logs and group them by protocol. 

### Usage

Place the script in the bistreams directory of the dionaea honeypot.

Make the script executable: <br/>
```chmod +x extractIPs.sh```

Change directory to the bistream logs you want to check. <br/>
Ex: <br/>
```cd 2020-01-01```<br/>

Run the script from the log folder:<br/>
```../extractIPs.sh```<br/>

Current logic of the script places the output file in the user's home directory. 
