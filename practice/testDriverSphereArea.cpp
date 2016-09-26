#include <iostream>
#include "mathlib.h"
int main()
{
	
  using namespace std;
  cout<< "Testing sphereArea method... "<< endl;
  int r = 5;
  int a = sphereArea(r);

  cout << "The sphere area with a radius of 5 is: " << a << endl;
}
