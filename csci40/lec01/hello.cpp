// compile with g++ hello.cpp

// this is a single-line "comment"--it's meant for programmers only;
// it's not code

/* this is
    a multi-line
    comment
*/

#include <iostream> // this gives us access to std::cout and std::endl
using namespace std; // I don't have to say std::


// this is called the main function--it's where the program starts!
int main() {
  // std::cout is the terminal screen
  // things between ""s are called *strings*
  cout << "Hello, world!" << endl;

  // marks the end of the program--tells the terminal that your
  // program executed correctly
  return 0;
}
