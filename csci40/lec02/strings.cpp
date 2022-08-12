#include <iostream>
#include <string>
using namespace std;

int main() {
  string s = "Hello"; 

  cout << s.at(0) << endl;
  cout << s.at(4) << endl;

  s.at(0) = 'h';  // you can use .at to change a char
  cout << s << endl;

  string s2;
  cout << "Enter a word: ";
  cin >> s2;
  cout << "s2: " << s2 << endl;

  return 0;
}
