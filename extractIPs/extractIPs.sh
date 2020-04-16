#!/bin/bash

#get name of current directory to use as filename
filename=$(basename $(pwd))  
filename+="_IPs.txt"

#function to extract and print scanner IPs from bistream logs
print_IPs () {
        for i in $@ 
                do
                        echo "Service:" | tee -a ~/$filename
                        echo $i | tee -a ~/$filename
                        echo "Port:" | tee -a ~/$filename
                        ls | grep $i | grep -oE "\-[0-9]{2,4}\-" | sort -u | tr -d - | tee -a ~/$filename
                        echo "Scanner IPs:" | tee -a ~/$filename
                        ls | grep $i | grep -oE "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | sort -u | tee -a ~/$filename
                        echo -e '\n' | tee -a ~/$filename
                done
}

#either check all protocol/services that were logged or check only specific protocols           
if [ $1 == "--all" ] 
then 
        services=$(ls | grep -oE "[a-zA-Z]{4,15}\-" | sort -u)
        services=$(echo $services | tr -d -)
        services=($services)
        print_IPs ${services[@]}
else
        print_IPs $@    

fi
