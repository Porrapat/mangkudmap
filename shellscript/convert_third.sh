#!/bin/bash
echo "Convert Thrid"

# awk -F "," '{print $1}' 1_mangosteen_2562.csv

while IFS=, read -r one two three four five; do
    # echo "$one, $two, $three, $four, $five";
    # echo $one

    # Query on goobank database using mysql command

    query=$(echo "SELECT COUNT(*) FROM thailand_province WHERE province_name=$one;")
    echo $query

    ret=$(mysql --default-character-set=utf8 -u root -p1234 -D mangkudmap -N -e "$query")
    echo $ret
    # if [ "$ret" -ne 0 ]; then
    #     # It is good data
    #     echo "Have record (1)"
    #     echo $ret
    # else
    #     echo "No record (0)"
    # fi



done < 1_mangosteen_2562.csv