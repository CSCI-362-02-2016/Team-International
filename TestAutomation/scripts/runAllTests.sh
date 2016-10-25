#!/bin/bash

#Create header of result table
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

		
	
	</tr>
	" > ../reports/report.html


#Loop through all the test cases .txt files in the testCases folder
for i in $(ls ../testCases); do

	readarray -t LINES < ../testCases/$i

	#Read testCase[i].txt and save into variables#
	TESTCASE=${LINES[10]} 
	REQUIREMENT=${LINES[11]}
	COMPONENT=${LINES[12]}
	DRIVER=${LINES[13]}
	METHOD=${LINES[14]}
	INPUT=${LINES[15]}
	EXPECTED_OUTPUT=${LINES[16]}

	#Switch to Driver Directory
	cd ../testCasesExecutables
	
	#Compile the driver *${DRIVER::-4} shave off .cpp extension*
	g++ $DRIVER -o ${DRIVER::-4} 

	#Run the driver and save return to $RESULT.
	RESULT=$(./${DRIVER::-4} $INPUT)
	
	#Print each variable to the terminal	
	echo "############### TEST RESULT ################"
	echo "Test Case ID:		$TESTCASE"
	echo "Requirement:		$REQUIREMENT"
	echo "Driver:			$DRIVER"
	echo "Input:			$INPUT"
	echo "Expected Output:	$EXPECTED_OUTPUT"
	echo "Actual Output:		$RESULT"
	
	#Compare the result to the expected output
	if [ $RESULT "==" $EXPECTED_OUTPUT ]; then
	RESULT_OUTCOME="pass"
	echo "Test Result:          	$RESULT_OUTCOME"
	else
	RESULT_OUTCOME="fail"
	echo "Test Result:		$RESULT_OUTCOME"
	fi

	#Populate table with results

	echo "<tr><td>$TESTCASE</td><td>$METHOD</td><td>$INPUT</td><td>$EXPECTED_OUTPUT</td><td>$RESULT</td><td>$RESULT_OUTCOME</td>                       </tr>" >> ../reports/report.html

done #end of for loop

xdg-open ../reports/report.html


