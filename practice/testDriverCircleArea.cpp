#include <iostream>
#include "mathlib.h"
int main()
{
	
  using namespace std;
  cout<< "Starting circleArea method testing..."<< endl;
  int r = 10;
  int c = circleArea(r);

  cout << "The area of the circle with a radius of 10 is : " << c << endl;
}
