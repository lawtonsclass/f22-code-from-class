#include <iostream>
using namespace std;

int main() {
  int times = 8;

  // loop "times" times, and ask the user to type a number
  // print the number immediately after they type it
  for (int i = 1; i <= times; i++) {
    cout << "Enter a #: ";
    int n;
    cin >> n;
    cout << "You just typed: " << n << endl;
  }

  int j = times;
  while (j >= 1) {
    cout << "Enter a #: ";
    int n;
    cin >> n;
    cout << "You just typed: " << n << endl;
    j--;
  }

  return 0;
}
