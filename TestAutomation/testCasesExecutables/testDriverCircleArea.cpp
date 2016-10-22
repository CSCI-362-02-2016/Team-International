/* This driver uses the math library from the Celestia project and runs the
* circleArea() method. 
* ARG: int radius input
* RETURN: area of the circle based on its radius
*/
#include <iostream>
#include "mathlib.h"

int main(int argc, char* argv[]) {

	using namespace std;
	int r = atoi(argv[1]);
	int retval = circleArea(r);
	cout << retval << endl; //return the area of the circle of the argument

}
