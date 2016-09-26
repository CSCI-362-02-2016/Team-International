#include <iostream>
#include "mathlib.h"
int main()
{
	
  using namespace std;
  cout<< "Testing sphereArea method... "<< endl;
  int r = 10;
  int a = circleArea(r);

  cout << "The circle area with a radius of 5 is: " << a << endl;

  cout << "The expect outcome for the circle area should be 314" << endl;
}
