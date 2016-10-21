#!/bin/bash



for i in $( ls ../testCases ); do  # ls the /TestCases dir and loop all files.

readarray -t LINES < ../testCases/$i

#Read testCase[i].txt and save into variables#
TESTCASE=${LINES[10]} 
REQUIREMENT=${LINES[11]}
COMPONENT=${LINES[12]}
DRIVER=${LINES[13]}
METHOD=${LINES[14]}
INPUT=${LINES[15]}
EXPECTED_OUTCOME=${LINES[16]}

cd ../testCasesExecutables #Switch to Driver Directory

g++ $DRIVER -o ${DRIVER::-4}  #Compile the driver *${DRIVER::-4} shave off .cpp extension*

RESULT=$(./${DRIVER::-4} $INPUT) #Run the driver and save return to $RESULT.
echo "#########TEST RESULT############"
echo "Test case #:          $TESTCASE"
echo "Requirement:          $REQUIREMENT"
echo "Test driver:          $DRIVER"
echo "Input being tested:   $INPUT"
echo "Result:               $RESULT"

if [ $RESULT -eq $EXPECTED_OUTCOME ]; then
echo "Test Result:          pass"
else
echo "Test Result:          fail"
fi

done #end of for loop


