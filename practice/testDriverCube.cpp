#include <iostream>
#include "mathlib.h"

/*
*This  method mathematically cubes an input and returns a result.
* ARG: Input
* RETURN: Cubed INPUT
*
*/

int main(int argc, char* argv[])
{

using namespace std;
  
	int a = atoi(argv[1]);
  	int retval = cube(a);
	cout << retval <<endl; //return the cube of the argument
}
