#include <iostream>
#include "mathlib.h"
using namespace std;
int main()
{
	
  int a = atoi(argv[1]);
  int retval = square(a);
  cout << retval <<endl; //return the square of the argument
}
