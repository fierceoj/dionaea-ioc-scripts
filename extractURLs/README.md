# Extract URLs from Dionaea
Extract malicious URLs from dionaea binaries.

### Usage
Place script in the binaries directory of the dionaea honeypot.

Make the script executable: <br/>
```sudo chmod +x extractURLs.sh``` <br/>

Run the script against all binaries: <br/>
```./extractURLs.sh --all```

Run the script against a specific binary: <br/>
```./extractURLs.sh <binary_name>```<br/>

- `<binary_name>` = the filename of the binary you want to check

