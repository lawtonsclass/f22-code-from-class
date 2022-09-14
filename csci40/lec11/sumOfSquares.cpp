#include <iostream>
using namespace std;

// these are function declarations
int sumSquaresFrom1To(int n);
int square(int x);
int add(int x, int y);

int main() {
  cout << "Enter n: ";
  int n;
  cin >> n;

  cout << sumSquaresFrom1To(n) << endl;

  return 0;
}

int add(int x, int y) {
  // give back (i.e., return) the sum of x and y
  return x + y; // gives back the answer to whoever called me
}

int square(int x) {
  return x*x;
}

int sumSquaresFrom1To(int n) {
  int sum = 0;

  for (int i = 1; i <= n; i++) {
    int i_squared = square(i);
    sum = add(sum, i_squared);
  }

  return sum;
}
