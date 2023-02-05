<<comments
# basic construct
function function_name {
  command...
}
comments

function hello_world {
    echo "Hello world"
}

function add {
    echo $(( $1 + $2 ))
}

hello_world     # function without arguments

add 1 3         # function with arguments