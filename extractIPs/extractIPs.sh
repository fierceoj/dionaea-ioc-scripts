#!/bin/bash

#get today's date in YYYY-MM-DD format
todays_date=$(date +%F)

#change directory to today's bistream logs
cd /opt/dionaea/var/dionaea/bistreams/$todays_date
 
#create filename where results will go
filename=$todays_date  
filename+="_IPs.txt"

#function to extract and print scanner IPs from bistream logs
print_IPs () {
        for i in $@ 
                do
                        echo "SERVICE:" | tee -a ~/$filename
                        echo $i | tee -a ~/$filename
                        echo "PORT:" | tee -a ~/$filename
                        ls | grep $i | grep -oE "\-[0-9]{2,4}\-" | sort -u | tr -d - | tee -a ~/$filename
                        echo "SCANNER IPs:" | tee -a ~/$filename
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
