#include <iostream>
using namespace std;

struct LineSegment2 {
  double x1;
  double y1;

  double x2;
  double y2;
};

struct Point {
  // every Point has an x and y coordinate
  double x;
  double y;
};

struct LineSegment {
  Point start;
  Point end;
};

int main() {
  LineSegment ls;
  ls.start.x = 2;
  ls.start.y = 3;
  ls.end.x = 2;
  ls.end.y = 3;

  LineSegment ls2 = {{2, 3}, {2, 3}};

  return 0;
}
