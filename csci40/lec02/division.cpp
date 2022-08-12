#include <iostream>
#include <iomanip> // for setprecision
using namespace std;

int main() {
  int x = 5;
  cout << (x / 2) << endl;

  cout << (x / 2.0) << endl;

  int y = 2;
  cout << (x / y) << endl;
  cout << (static_cast<double>(x) / y) << endl;

  // let's print the next double with 3 decimal places of precision
  cout << fixed << setprecision(3) << (x / 2.0) << endl;

  return 0;
}
