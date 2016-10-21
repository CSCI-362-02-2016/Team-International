#include <iostream>
#include "mathlib.h"

int main(int argc, char* argv[]) {

	using namespace std;
	int a = atoi(argv[1]);
	//int b = atoi(argv[2]);
	int retval = cube(a);
	cout << retval << endl; //return the cube of the argument




}