
#!/bin/bash

if ! [ -d "$HOME/bin" ]
then
	mkdir "$HOME/bin"
fi
count=0
for f in ./*
do
	echo $f
	if [ -x $f ]
	then
		echo $f
		mv $f "$HOME/bin"
		((count=count+1))
	fi
done
echo "$count programas movidos"
