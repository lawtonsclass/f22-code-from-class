#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main() {
  ofstream ofs;
  ofs.open("out.txt", ios_base::app);

  // equivalent to:
  // ofstream ofs("out.txt", ios_base::app);

  while (true) {
    string line;
    cout << "Enter the next line: ";
    getline(cin, line);

    if (line == "q") {
      break;
    }

    // add this line to the file
    ofs << line << endl;
  }

  ofs.close();

  return 0;
}
