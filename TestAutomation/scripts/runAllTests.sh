#!/bin/bash

<<<<<<< HEAD
echo "<table border ="1px"><tr><td>TestCase</td><td>Result</td><td>passOrFail</td></tr></table>" > ../reports/test.html
=======
echo "<table border ="1px">
	<tr>
		<th>TestCaseID</th>
		<th>Method</th>
		<th>Input</th>
		<th>Expected Outcome</th>
		<th>Actual Output</td>
		<th> Pass/ Fail</th>
	</tr>
	<tr>
		<td>value</td>
		<td>value</td>
		<td>value</td>
		<td>value</td>
		<td>value</td>
		<td>value</td>
		
	
	</tr>
	</table>" > test.html
>>>>>>> 88b7b5200c5d4f61799e3f4358b2477950569185

for i in $( ls ../testCases ); do  # ls the /TestCases dir and loop all files.

readarray -t LINES < ../testCases/$i

#Read testCase[i].txt and save into variables#
TESTCASE=${LINES[10]} 
REQUIREMENT=${LINES[11]}
COMPONENT=${LINES[12]}
DRIVER=${LINES[13]}
METHOD=${LINES[14]}
INPUT=${LINES[15]}
EXPECTED_OUTPUT=${LINES[16]}

cd ../testCasesExecutables #Switch to Driver Directory

g++ $DRIVER -o ${DRIVER::-4}  #Compile the driver *${DRIVER::-4} shave off .cpp extension*

RESULT=$(./${DRIVER::-4} $INPUT) #Run the driver and save return to $RESULT.
echo "############### TEST RESULT ################"
echo "Test Case ID:		$TESTCASE"
echo "Requirement:		$REQUIREMENT"
echo "Driver:			$DRIVER"
echo "Input:			$INPUT"
echo "Expected Output:	$EXPECTED_OUTPUT"
echo "Actual Output:		$RESULT"

if [ $RESULT "==" $EXPECTED_OUTPUT ]; then
RESULT_OUTCOME="pass"
echo "Test Result:          	$RESULT_OUTCOME"
else
RESULT_OUTCOME="fail"
echo "Test Result:		$RESULT_OUTCOME"
fi

###CREATE A TABLE WITH RESULTS###


for k in {1..6}
do
echo "<td>$TESTCASE</td><td>$METHOD</td>" >> ../reports/test.html




done
###END OF TABLE CREATING###


done #end of for loop


