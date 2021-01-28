#!/bin/bash
# edited version of Luke Smith's compiler.sh script

# get main file location variables
file=$(readlink -f "$1")
dir=$(dirname "$file")
base="${file%.*}"

# goto files dir
cd "$dir" || exit
clear
# note that for c projects with more than one .c
# the make.sh script should be used!
# do the followeing depending on file's suffix
case "$file" in
    *\.md) exec urxvt -e sh -c "grip $file " & ;; 
    *\.py) python3 "$file" && [[ 'echo $?' ]] && sleep 2 || read -p "Press enter to continue" ;;
    *\.c) gcc "$file" -Wall -o "$base".out -lm && [[ 'echo $?' ]] && "$base".out && sleep 2 || read -p "Press enter to continue" ;; 
    *\.cpp) g++ "$file" -Wall -o "$base".out -lcurl -ljsoncpp && [[ 'echo $?' ]] && "$base".out && sleep 2 || read -p "Press enter to continue" ;;
    *\.sh) bash "$file" && [[ 'echo $?' ]] && sleep 2 || read -p "Press enter to continue" ;;
    *\.tex) pdflatex "$file" && [[ 'echo $?' ]] || read -p "Press enter to continue";; 
    *) 
esac
