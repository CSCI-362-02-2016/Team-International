#include <iostream>
#include "mathlib.h"

int main(int argc, char* argv[])
{
	using namespace std;
	int a = atoi(argv[1]);
	//cout << argv[0] <<endl;
	//int b = atoi(argv[2]);
	int retval = square(a);
	cout << retval <<endl; //return the square of the argument

}


