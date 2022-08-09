#include <iostream>
#include "add1.h"
using namespace std;

int main() {
  cout << "Enter a number: ";
  int n;
  cin >> n;

  cout << add1(n) << endl;

  return 0;
}
