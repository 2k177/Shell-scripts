<<comment
Pipelines, often called pipes, is a way to chain commands and connect output 
from one command to the input of the next. A pipeline is represented by the 
pipe character: |.

command1 | command2

By default pipelines redirects only the standard output, 
if you want to include the standard error you need to use the form |& which 
is a short hand for 2>&1 |.
comment

ls / | wc -l    #36
ls / | head 

<<grep
Grep searches for patterns in each file. Patterns is one or more patterns 
separated by newline characters, and grep prints each line that matches a pattern. 
Typically patterns should be quoted when grep is used in a shell command.
grep

ls / | grep  # This will grab any line/file that has a matching pattern in it