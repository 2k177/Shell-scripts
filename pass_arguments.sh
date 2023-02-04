#!/bin/bash

<<comment
 $1 variable references the first argument in the command line,
  $2 the second argument and so forth. 
 The variable $0 references to the current script.
comment

function File {
#The variable $# holds the number of arguments passed to the script
    echo $#
    
}

if [ ! $# -lt 1 ]; then
# The variable $@ holds a space delimited string of all arguments passed to the script
        echo $@
        File $*
        exit 0
fi