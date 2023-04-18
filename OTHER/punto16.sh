#!/bin/bash
users=$(cut -d: -f1 /etc/passwd)
for u in $users
do
	count=$(find . -type f -user $u -name "*.$1" | wc -l)
	if [ $count -gt 0 ]; then
		echo "$u: $count" >> reporte.txt
	fi
done

