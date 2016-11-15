#!/bin/bash

cd ./scripts

echo "<html>" > ../reports/report.html

echo "<img src="flags.png">" >> ../reports/report.html

#Create intro and header of result table
echo "	<h2>Team International Test Results</h2>
	<hr noshade size="1" color="#EAEAEA">

	<h3>Team Members: </h3> 
	<p>Gui Costa, Tony Tang, Megan Landau</p>

	<h3>Chosen H/FOSS Project:</h3>
	<p>Celestia-G2</p>

	<h3>Description of Results: </h3>	
	<p>The table below displays the results of 25 test cases that were used to analyze Celestia-G2's math library. By creating and using custom drivers for each of the five methods tested, we were able to compare actual outcomes with expected results that we calculated ourselves. Inputs tested include small, large, negative, positive, extremely large, decimal, integer, and zero values. Pass or fail results are displayed in green and red, respectively.</p>

	<h3>Notes about the Celestia-G2 Math Library:</h3>
	<p><li type="circle">Pi is defined as 3.14159265358979323846</li>
	<li type="circle">Decimals are rounded to 4 places of precision</li>
	<li type="circle">Exponential notation is used when the output is greater than e+05 in the circleArea, sphereArea, and radToDeg methods</li></p>	

	<style>
	h2	{
		text-align: center;
		color: #525252;
		font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		font-size: 30px;
	}
	h3	{
		color: #525252;
		font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		font-weight: bold;
		font-size: 16px;
	}
	img {
		display: block;		
		width: 60%;
		margin: auto;
	}
	p {
		margin-right: 40px;
		margin-left: 40px;
		line-height: 20px;	
	}
	li {
		margin-right: 40px;
		margin-left: 40px;
		line-height: 20px;	
	}
	body	{
		padding: 50px 70px 50px 70px;
		font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
		color: #525252;
		line-height: 20px;	
	}
	table {
		border-collapse: collapse;
		width: 100%;
	}
	td {
		text-align: left;
		padding: 10px;
	}
	th {
		text-align: left;
		padding: 10px;
		color: white;
		background-color: #858585;
	}
	tr:nth-child(even) {
		background-color: #EAEAEA;	
	}
	</style>

	<table>
	<tr>
		<th>Test Case ID</th>
		<th>Method</th>
		<th>Input</th>
		<th>Expected Output</th>
		<th>Actual Output</td>
		<th>Pass / Fail</th>
	</tr>
	<tr>
	</tr></font>
	" >> ../reports/report.html

#Initialize variables for bar graph
PASS=0
FAIL=0

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
	

	#Compare values to determine Pass or Fail outcome and populate table with results
	if [ $RESULT "==" $EXPECTED_OUTPUT ]; then
		((PASS += 1))
		RESULT_OUTCOME="Pass"
		echo "Test Result:          	$RESULT_OUTCOME"
		echo "<tr><td>$TESTCASE</td><td>$METHOD</td><td>$INPUT</td><td>$EXPECTED_OUTPUT</td><td>$RESULT</td><td 		style="color:green">$RESULT_OUTCOME</td></tr>" >> ../reports/report.html
	else
		((FAIL += 1))
		RESULT_OUTCOME="Fail"
		echo "Test Result:		$RESULT_OUTCOME"
		echo "<tr><td>$TESTCASE</td><td>$METHOD</td><td>$INPUT</td><td>$EXPECTED_OUTPUT</td><td>$RESULT</td><td 		style="color:red">$RESULT_OUTCOME</td></tr>" >> ../reports/report.html
	fi

done #end of for loop

#echo "PASS = $PASS"
#echo "FAIL = $FAIL"

echo "</html>" >> ../reports/report.html

xdg-open ../reports/report.html


