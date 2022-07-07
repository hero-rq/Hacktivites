#include <stdio.h>
#include <string.h>
unsigned long hashcode = 0x21DD09EC;
int main() {
  int a, b;
  a = hashcode / 5;
  b = hashcode - (a*4);
  printf("%d\n", a);
  printf("%d", b);
}
