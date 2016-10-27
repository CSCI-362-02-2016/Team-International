#include <iostream>
#include "mathlib.h"

/* This driver uses the math library from the Celestia project and runs the
* circleArea() method. 
* ARG: int radius input
* RETURN: area of the circle based on its radius
*/

using namespace std;

int main(int argc, char* argv[]) {
 	
	if(argc != 2)
	{
	 	cout << "ERROR: You need one argument.\n";
		return 0;
	}

	float r = atof(argv[1]);
	float retval = circleArea(r);
	cout << retval << endl; //return the area of the circle of the argument

}
