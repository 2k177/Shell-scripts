# decision making

<<comment
if [ expression ]; then
code 
fi
comment

#IF condition
NAME="Mayer"
if [ $NAME = "Mayer" ]; then
    echo "True - my name is Mayer"  #True - my name is Mayer
fi

#if else condition
NAME="John"
if [ $NAME = "Mayer" ]; then
    echo "True - my name is Mayer"
else
    echo "False"            #False
    echo "My name is $NAME" #My name is John
fi

#if eif condition

NAME="Georgia"
if [ $NAME = "John" ]; then
    echo "Name is john"
elif [ $NAME = "Georgia" ]; then
    echo "Name is Georgia"          #Name is Georgia
else
    echo "Nothing... never mind"
fi

#if condition with number
NUMBER=2
if [ $NUMBER -eq 2 ]; then
    echo "True - number selected is $NUMBER" #True - number selected is 2
fi

#Logical Combination
if [[ 1 -eq 1 && ("see" = "bee" || $NAME = "Georgia") ]] ; then
    echo "Logical combination is True"  #Logical combination is True
fi

#Case bash structure
mycase=1
case $mycase in
    1) echo "You selected bash";;  # True - number selected is 2
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac