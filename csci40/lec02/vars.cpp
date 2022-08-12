#include <iostream>
using namespace std;

int main() {
  int x;

  x = 42;
  cout << x << endl;

  x = 5*5;
  cout << x << endl;

  x = x + 1;
  cout << x << endl;
  x += 1; // equivalent to x = x + 1;
  cout << x << endl;
  x++;  // also equivalent to x = x + 1;
  cout << x << endl;



  return 0;
}
