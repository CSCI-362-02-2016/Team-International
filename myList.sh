#!/bin/bash
# My first script

echo "<font face = "Helvetica"><b>TEAM INTERNATIONAL</b></font>" >> myList.html


# Part of code from unix.stackexchange.com/questions/86722/how-do-i-loop-through-only-directories-in-bash
for d in *; 
	do
	echo "<font face = "Helvetica"><br>$d</font>" >> myList.html
done



chmod 755 myList.html
xdg-open myList.html
