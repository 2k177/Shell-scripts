#basic construction 

# loop on array member
arr=(1,2,3,4,5,6,7)
# echo $arr
for arg in $arr ; do
    echo $arg           #1,2,3,4,5,6,7
done
echo "*************"
# loop on command output results
for f in `ls`; do
    echo $f
done
echo "*************"
for f in $(ls); do
    echo $f
done
echo "*************"
#while loop
<<comment
# basic construct
while [ condition ]
do
 command(s)...
done
comment

COUNT=4
while [ $COUNT -gt 0 ]; do
    echo $COUNT
    COUNT=$(($COUNT-1))         # 4 3 2 1
done
echo "*************"

<<comment
until loop
The until construct tests for a condition, and if false, executes commands. 
It keeps looping as long as the condition is false (opposite of while construct)

# basic construct
until [ condition ]
do
 command(s)...
done
comment
COUNT=1
until [ $COUNT -gt 3 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT + 1))
done
echo "*************"

#break and continue statements
# Prints out 0,1,2,3,4

COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done


# Prints out only odd numbers - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Check if COUNT is even
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
  fi
  echo $COUNT
done