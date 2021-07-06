#!/bin/bash
mysql -u root -p < thailand_province.sql
echo "USE mangkudmap;" > province_lat_long.sql
echo "SET NAMES utf8;" >> province_lat_long.sql
awk -F "," '{printf "INSERT INTO thailand_province (id,province_code,province_name,latitude,longtitude) VALUES (NULL,\x27%s\x27,\x27%s\x27,\x27%s\x27,\x27%s\x27);",$1,$2,$3,$4;print ""}' province_lat_long.csv >> province_lat_long.sql

mysql -u root -p < province_lat_long.sql