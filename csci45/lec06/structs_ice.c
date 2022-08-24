#include <stdio.h>

struct blah {
  double x;
  int y;
};

int main() {
  int arr[] = {7, 8, 9};

  struct blah b; // = {7, 8, 9};

  printf("%d\n", (void*)&b.y - (void*)&b.x);

  return 0;
}
