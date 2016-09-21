#!/bin/bash
# My first script
# Team International - Gui Costa, Megan Landau, Tony Tang
# This is a script, myList.sh for Unix that lists the top-level directory contents of its containing directory in an html file displayed in a browser. 


#Change font
echo "<font face = "Helvetica"><b>TEAM INTERNATIONAL</b></font>" >> myList.html


# Part of code from unix.stackexchange.com/questions/86722/how-do-i-loop-through-only-directories-in-bash

#loops through all root directories and paste teir name into myList.html
for d in *; 
	do
	echo "<font face = "Helvetica"><br>$d</font>" >> myList.html
done


#Sets permission so we can run the script
chmod 755 myList.html

#Open myList.html in a browser.
xdg-open myList.html
