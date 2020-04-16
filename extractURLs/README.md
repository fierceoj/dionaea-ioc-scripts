# Extract URLs from Dionaea
Extract malicious URLs from dionaea binaries.

### Usage
Make the script executable: <br/>
```sudo chmod +x extractURLs.sh``` <br/>

Run the script against all binaries: <br/>
```./extractURLs.sh --all```

Run the script against specific binaries: <br/>
```./extractURLs.sh <binary_name1> <binary_name2> <binary_name3>...<binary_nameN>```<br/>

- `<binary_nameN>` = the filename of the binary you want to check

