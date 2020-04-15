#!/bin/bash

#function to extract and print URLs found in strings output of binaries
print_urls () {
        for i in $@
                do
                        echo "FILE: $i"
                        sudo strings $i | grep -Eo "https?:\/\/\S+" 
                        echo -e '\n'
                done
}

#either check all binares or just binary names provided
if [ $1 == "--all" ] 
then 
        print_urls "*"
                
else
        print_urls $@
fi 
