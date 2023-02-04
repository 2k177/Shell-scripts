my_arr=(1, 2, "fruit", orange)
echo  ${my_arr[@]}
echo  ${#my_arr[@]}

my_arr=(apple banana "Fruit Basket" orange)
echo ${my_arr[3]}

# adding another array element
my_arr[4]="carrot"
echo "Array after updating : ${my_arr[@]}"