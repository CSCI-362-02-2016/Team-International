#include <iostream>
#include "mathlib.h"

/* This driver uses the math library from the Celestia project and runs the
* cube() method. 
* ARG: int to be cubed
* RETURN: cubed result
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
  	int retval = cube(a);
	cout << retval <<endl; //return the cube of the argument
}
