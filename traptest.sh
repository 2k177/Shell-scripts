#!/bin/bash

<<comment
Some of the common signal types you can trap:

SIGINT: user sends an interrupt signal (Ctrl + C)

SIGQUIT: user sends a quit signal (Ctrl + D)

SIGFPE: attempted an illegal mathematical operation
comment

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true
do
    sleep 60
done