#include <iostream>
#include "mathlib.h"

/* This driver uses the math library from the Celestia project and runs the
* radtoDeg method
* ARG: int radians
* RETURN: value converted into degree
*/

using namespace std;

int main(int argc, char* argv[]) {
 	
	if(argc != 2)
	{
	 	cout << "ERROR: You need one argument.\n";
		return 0;
	}

	float r = atof(argv[1]);
	float retval = radToDeg(r);
	cout << retval << endl; //return the value of the inputed radians into degrees

}
