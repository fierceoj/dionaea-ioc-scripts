#!/bin/bash

print_urls () {
        for i in $1
                do
                        echo "FILE: $i"
                        sudo strings $i | grep -Eo "https?:\/\/\S+" 
                        echo -e '\n'
                done
}

if [ $1 == "--all" ] 
then 
        print_urls "*"
                
else
        print_urls ""$@""
fi 
