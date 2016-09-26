#include <iostream>

#include "mathlib.h"


int main()
{
   using namespace std;
   cout << "Hello World"; // prints Hello World
   
   int a = 2;
   int b = square(a);
   cout << "The output of the square of a is: " << square(b) << endl;
   
   return 0;
}
