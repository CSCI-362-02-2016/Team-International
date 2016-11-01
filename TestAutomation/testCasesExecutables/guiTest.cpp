#include <iostream>
#include "mathlib.h"

/* This driver uses the math library from the Celestia project and runs the
* square() method. 
* ARG: int to be squared
* RETURN: squared result
*/

using namespace std;

int main(int argc, char* argv[])
{
	if(argc != 2)
	{
	 	cout << "ERROR: You need one argument.\n";
		return 0;
	}

	int a = strtonum(argv[1]);
	int retval = square(a);
	cout << retval <<endl; //return the square of the argument

}


