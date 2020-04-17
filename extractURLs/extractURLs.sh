#!/bin/bash

#function to extract and print URLs found in strings output of binaries
print_urls () {
        for i in $@
                do
                        echo "MD5 FILE HASH:"
                        echo $i
                        echo "URL IOCs:"
                        sudo strings $i | grep -Eo "https?:\/\/\S+" 
                        echo -e '\n'
                done
}

#change directory to the binaries folder
cd /opt/dionaea/var/dionaea/binaries

#either check all binaries or just binary names provided in arguments
if [ $1 == "--all" ] 
then 
        print_urls "*"
                
else
        print_urls $@
fi  
