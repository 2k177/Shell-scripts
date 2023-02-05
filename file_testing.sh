#!/bin/bash

#use "-e" to test if file exist
filename="array.sh"
if [ -e $filename ]; then
    echo "$filename is present"
fi

#use "-d" to test if directory exists
dir_name="dummy"
if [ -d $dir_name ]; then
    echo "Directory $dir_name is present"
fi

#use "-r" to test if file has read permission for the user running the script/test

#!/bin/bash
filename="sample.md"
if [ ! -f "$filename" ]; then
    touch "$filename"
fi
if [ -r "$filename" ]; then
    echo "you are allowed to read $filename"
else
    echo "you are not allowed to read $filename"
fi