#!/bin/bash

for u in $(ls /home)
do
	if [ -d "/home/$u/Downloads" ]
	then
		s=$(cat /etc/passwd | grep $u | cut -d: -f7)
		if [ $s = "/bin/bash" ]
		then
			echo "$u" >> report.txt
		fi
	fi
done
