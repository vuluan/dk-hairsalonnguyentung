#!/bin/bash
sudo a2enmod rewrite;
service apache2 start;
tail -f /dev/null;