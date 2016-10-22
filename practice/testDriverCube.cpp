<<<<<<< HEAD
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
=======
#include <iostream>
#include "mathlib.h"

int main(int argc, char* argv[]) {

	using namespace std;
	int a = atoi(argv[1]);
	//int b = atoi(argv[2]);
	int retval = cube(a);
	cout << retval << endl; //return the cube of the argument




}
>>>>>>> 9b9de3b3a1e5da5fa2bee22f933d04b3c4789640
