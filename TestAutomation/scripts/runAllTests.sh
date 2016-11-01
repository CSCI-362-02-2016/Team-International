#!/bin/bash

cd ./scripts

#Create header of result table
echo "<h2>TEAM INTERNATIONAL</h2>
	<font face = "Helvetica"><style>
	h2	{
		color:blue;
		font-face: "Helvetica";
	}
	table {
		border: 1px solid black;
		border-collapse: collapse;
		width: 100%;
	}
	td {
		border: 1px solid #dddddd;
		test-align: left;
		padding: 10px;
	}
	th {
		border: 1px solid #dddddd;
		test-align: left;
		padding: 10px;
		color: white;
		background-color: #4CAF50;
	}
	tr:nth-child(even){
	background-color: #dddddd;
	}
	</style>

	<table>
	<tr>
		<th>TestCaseID</th>
		<th>Method</th>
		<th>Input</th>
		<th>Expected Outcome</th>
		<th>Actual Output</td>
		<th> Pass/ Fail</th>
	</tr>
	<tr>

		
	
	</tr></font>
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
	
	#
	if [ $RESULT "==" $EXPECTED_OUTPUT ]; then
	RESULT_OUTCOME="pass"
	echo "Test Result:          	$RESULT_OUTCOME"
	else
	RESULT_OUTCOME="fail"
	echo "Test Result:		$RESULT_OUTCOME"
	fi

	#Populate table with results
#<font color="red">$RESULT_OUTCOME</font>
	echo "<tr><td>$TESTCASE</td><td>$METHOD</td><td>$INPUT</td><td>$EXPECTED_OUTPUT</td><td>$RESULT</td><td>$RESULT_OUTCOME</td>                       </tr>" >> ../reports/report.html

done #end of for loop

xdg-open ../reports/report.html


