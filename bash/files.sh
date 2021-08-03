#!/bin/bash

# Please state which bash you've been testing on (OS + version)

function sortPandas() {
    # Add your code here
    # List the pandas in the panda directory from oldest to  youngest
    # echo your results to a file called 'panda-family.txt' with the filename as the final column
}

# Find the panda family, extracts files into a sub-directory
unzip -o pandas.zip

sortPandas
  
# Test code, please do not edit
expected_order=("oldpanda" "unclepanda" "youngpanda" "babypanda")
i=0
while read -r line;
do
    if $(echo $line | awk '{print NF}') < 2; do
        echo Not enough columns!
    fi

    panda=$(echo $line | awk '{print $NF}')
    if [ "${panda}" != "${expected_order[i]}" ]; then
        echo "Wrong panda order!"
        exit 2
    fi
    i=$i+1
done < panda-family.txt

