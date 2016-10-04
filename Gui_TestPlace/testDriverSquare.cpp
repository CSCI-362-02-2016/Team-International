#include <iostream>
#include "mathlib.h"
using namespace std;
int main(int argc, char* argv[])
{
	int a = atoi(argv[1]);
	//int b = atoi(argv[2]);
	int retval = square(a);
	return retval; //return the square of the argument

}


