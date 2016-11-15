#include <iostream>
#include "astro.h"

/* This driver uses the 3dsread library from the Celestia project and runs the
* readChar() method. 
* 
* RETURN: input converted to char
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
	int retval = secsToDays(a);
	cout << retval <<endl; //return the char conversion of the argument

}
