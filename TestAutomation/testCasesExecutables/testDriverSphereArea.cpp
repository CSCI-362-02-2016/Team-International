#include <iostream>
#include "mathlib.h"

/* This driver uses the math library from the Celestia project and runs the
* sphereArea() method. 
* ARG: radius of sphere
* RETURN: area of the sphere
*/

using namespace std;

int main(int argc, char* argv[])
{
	if(argc != 2)
	{
	 	cout << "ERROR: You need one argument.\n";
		return 0;
	}

	int a = atoi(argv[1]);
	int retval = sphereArea(a);
	cout << retval << endl; //return area of the sphere

}
