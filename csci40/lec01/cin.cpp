#include <iostream>
using namespace std;

int main() {
  int x; // x holds "nothing" right now--I'll fill it with whatever the user types

  cout << "Enter an int: ";
  cin >> x; // get input from the user and put it into the x variable!
  cout << "You typed " << x << endl;

  char c;
  double my_double;

  cout << "Enter a char: ";
  cin >> c;

  cout << "Enter a double: ";
  cin >> my_double;

  cout << c << endl;
  cout << my_double << endl;

  return 0;
}
