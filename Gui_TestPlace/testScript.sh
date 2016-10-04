#!/bin/bash


readarray -t LINES < testCase1

TESTCASE=${LINES[0]} #sets TESTCASE to a variable = to LINES[0]
echo $TESTCASE

REQ=${LINES[1]}
echo $REQ

DRIVER=${LINES[3]}
echo $DRIVER

g++ ${LINES[3]} -o nameOfCompiledDriver  #puts variable name of driver, compiles to new
./nameOfCompiledDriver ${LINES[5]} #${LINES[6]}  uncomment if you need a 2nd arg


#at this point, i have an array being made from all lines of a txt file
#i can use my lines as arguments by indexing the array ${LINES[4]}
#i have compiles the driver .cpp file
#i have run the compiled driver with args collected from the LINES array - input ${LINES[5]}

#next: need to get a return value from running compiled driver
#need to compare return val with expected outcome ${LINES[6]} - P/F!!
#need if statement to determine if the test passed or failed
