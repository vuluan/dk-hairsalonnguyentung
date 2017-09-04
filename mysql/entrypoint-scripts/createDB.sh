#!/bin/bash
mysql --user=root --password=admin --execute 'CREATE DATABASE db_nguyentung;'
mysql -uroot -padmin db_nguyentung < /var/www/html/hairsalonnguyentung/bk_data/db_nguyentung.sql;
mysql --user=root --password=admin --execute 'USE db_nguyentung; UPDATE hsnt_options SET option_value = "http://dev.hairsalonnguyentung.com" WHERE option_name = "siteurl";'
mysql --user=root --password=admin --execute 'USE db_nguyentung; UPDATE hsnt_options SET option_value = "http://dev.hairsalonnguyentung.com" WHERE option_name = "home";'
