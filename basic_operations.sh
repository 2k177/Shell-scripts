#Basic Operators
#Simple arithmetics on variables can be done using the arithmetic expression: $((expression))

A=3
b=$((100*$A+5))
echo $b #305
echo $A #3
echo $((A**2)) #9   a ** b exponentiation (a to the power of b)
echo $((A%2)) #1

#TOTAL of a fruit basket
pineapple=1
bananas=2
watermelons=3
TOTAL=$((pineapple+bananas+watermelons))
echo $TOTAL #6