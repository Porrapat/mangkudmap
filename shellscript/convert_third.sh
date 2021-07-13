#!/bin/bash
echo "Convert Thrid"

# awk -F "," '{print $1}' 1_mangosteen_2562.csv

while IFS=, read -r one two three four five; do
    # echo "$one, $two, $three, $four, $five";
    # echo $one

    # Query on goobank database using mysql command

    query=$(echo "SELECT COUNT(*) FROM thailand_province WHERE province_name='$one';")
    # echo $query

    # mysql --default-character-set=utf8 -u root -p1234 -D mangkudmap -N -e "$query"
    # mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N -e "$query"
    # mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N < chan.sql
    # echo $query | mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N
    # echo $query | mysql --default-character-set=utf8 -u root -p1234 -D mangkudmap -N
    # echo $query | mysql -u root -p1234 -D mangkudmap -N
    # exit;

    ret=$(echo $query | mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N)
    echo $ret

    # mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N -e "SELECT COUNT(*) FROM thailand_province WHERE province_name='จันทบุรี';"
    if [ "$ret" -ne 0 ]; then
        # It is good data
        echo "Have record (1)"

        querymore=$(echo "SELECT id FROM thailand_province WHERE province_name='$one';")
        echo $querymore
        retmore=$(echo $querymore | mysql --default-character-set=utf8mb4 -u root -p1234 -D mangkudmap -N)
        echo $retmore
    #     echo $ret
    else
        echo "No record (0)"
    fi



done < 1_mangosteen_2562.csv