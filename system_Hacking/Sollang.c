#include <stdio.h>

int main(void) {
  int a=0,b=0,c=0,d=0;
  int s=0;

  scanf("%d %d %d %d", &a, &b, &c, &d);
  s = a*b + c*d;
  printf("%d\n", s);
  return 0;
}
