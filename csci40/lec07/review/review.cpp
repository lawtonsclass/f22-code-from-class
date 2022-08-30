#include <iostream>
#include <string>
using namespace std;

int main() {
  int i = 42; 
  double d = 3.14;
  char c = 'A';
  string s = "hi mom"; // cin on strings only gives you a single word
  // use getline for multiple words
  
  if (i == 42) {
    cout << "This body will run!\n";
  } else {
    cout << "This body won't run!\n";
  }

  return 0;
}
