#include <iostream>
#include <sstream>
using namespace std;

int main() {
  stringstream ss; 
  ss << 100;
  ss << endl;
  ss << 200;

  int x;
  ss >> x;
  cout << x << endl;

  cout << endl;

  cout << ss.str() << endl;

  return 0;
}
