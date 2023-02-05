#!/bin/bash

<<comment
$0 - The filename of the current script.
$n - The Nth argument passed to script was invoked or function was called.
$# - The number of argument passed to script or function.
$@ - All arguments passed to script or function.
$* - All arguments passed to script or function.
$? - The exit status of the last command executed.
$$ - The process ID of the current shell. For shell scripts, 
this is the process ID under which they are executing.
$! - The process number of the last background command.
comment

echo "Script Name: $0"

function func {
    for var in $* ;
    do
        let i=i+1
        echo "\$${i} arguments is : ${var}"
    done
    echo "Total count if arguments is $#"
}

func this is a spl variable demo

<<output
bash spl_variables.sh
Script Name: spl_variables.sh
$1 arguments is : this
$2 arguments is : is
$3 arguments is : a
$4 arguments is : spl
$5 arguments is : variable
$6 arguments is : demo
Total count if arguments is 6
output
