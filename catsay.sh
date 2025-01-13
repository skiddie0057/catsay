#!/bin/bash

# Define the cat art with proper escaping
cat_art=$' _._     _,-""`-._\n(,-.`._,\'(       |\\`-/|\n    `-.-\' \\ )-`( , o o)\n          `-    \\`_`"\'-\n'

cat_art_2=$'    /\\_____/\\\n   /  o   o  \\\n  ( ==  ^  == )\n   )         (\n  (           )\n ( (  )   (  ) )\n(__(__)___(__)__)\n'

cat_art_3=$' ,_     _\n |\\\\_,-~/\n / _  _ |    ,--.\n(  @  @ )   / ,-\'\n \\  _T_/-._( (\n /         `. \\\n|         _  \\ |\n \\ \\ ,  /      |\n  || |-_\\__   /\n ((_/`(____,-\'\n'

# Store cat art in an array
catz=("$cat_art" "$cat_art_2" "$cat_art_3")

# Function to display the message with cat art
catsay() {
    local message="$1"
    local border=$(printf '%0.s=' $(seq 1 ${#message}))
    
    echo " $border "
    echo "< $message >"
    echo " $border "
    echo "    o    "
    echo "    o    "
    echo "${catz[RANDOM % ${#catz[@]}]}"
}

# Main script logic
if [ $# -eq 0 ]; then
    echo "Usage: $0 <message>"
else
    message="$*"
    catsay "$message"
fi
