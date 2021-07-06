#!/bin/bash

# Get List of Image File
ls -la /var/www/html/goobank/storage/app/public/member/image > goobank_member_list.txt

# Cut Only Filename
cat goobank_member_list.txt | awk '{ if ($9 ~ /^[0-9]{10}/) print $9 }' > goobank_member_file_lis$

# For each line of filename - goobank_member_file_list.txt
while read p; do
    # Capture telephone number using regular expression (it is Goobank username)
    pat='([0-9]{10})(.*)'
    [[ "$p" =~ $pat ]]
    USERNAME="${BASH_REMATCH[1]}"
    echo -n $USERNAME" "

    # Query on goobank database using mysql command
    ret=$(mysql goobank -N -e "SELECT COUNT(*) FROM members WHERE username=$USERNAME;")
    if [ "$ret" -ne 0 ]; then
        # It is good data
        echo "Have record (1)"
    else
        # It is junk data
        echo "No record (0)"
        # So we can get rid of it by move it to another place
        # Uncommand these command to take action
        mv /var/www/html/goobank/storage/app/public/member/image/"$USERNAME"_* /var/www/html/goob$
        echo "Moved"
    fi
done < goobank_member_file_list.txt

