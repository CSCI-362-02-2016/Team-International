#!/bin/bash


readarray -t LINES < testCase1

TESTCASE=${LINES[0]} #sets TESTCASE to a variable = to LINES[0]
echo "test case ## = "
echo $TESTCASE

REQUIREMENT=${LINES[1]}
echo "requirement = "
echo $REQUIREMENT

DRIVER=${LINES[3]}
echo "test driver = "
echo $DRIVER

echo "input being tested = "
echo ${LINES[5]}

g++ ${LINES[3]} -o compiledDriver2  #puts variable name of driver, compiles to new
RESULT=$(./compiledDriver2 ${LINES[5]}) #${LINES[6]}  uncomment if you need a 2nd arg
echo "result = "
echo $RESULT

EXPECTED=${LINES[6]}
if [ $RESULT -eq $EXPECTED ]; then
echo "pass!"
else
echo "fail!"
fi

#at this point, i have an array being made from all lines of a txt file
#i can use my lines as arguments by indexing the array ${LINES[4]}
#i have compiles the driver .cpp file
#i have run the compiled driver with args collected from the LINES array - input ${LINES[5]}

#next: need to get a return value from running compiled driver
#need to compare return val with expected outcome ${LINES[6]} - P/F!!
#need if statement to determine if the test passed or failed
