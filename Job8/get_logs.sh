#!/bin/bash

last | grep . -c > number_connection_$(date +%d-%m-%Y-%H:%M).txt

tar -czvf number_connection_$(date +%d-%m-%Y-%H-%M).tar.gz *.txt --remove-files

mv *.tar.gz /home/abdou/shell-exe/Job8/Backup
