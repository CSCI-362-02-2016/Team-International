#include <iostream>
#include "mathlib.h"

/*
* This driver uses the math library from celestia project and runs the * cube method and return the cube result of the input
* PRECONDITION : Int input
* RETURN: Cubed input
*
*/

int main(int argc, char* argv[])
{

using namespace std;
  
	int a = atoi(argv[1]);
  	int retval = cube(a);
	cout << retval <<endl; //return the cube of the argument
}
