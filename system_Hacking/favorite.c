#include <stdio.h>

int main(void) {
  int x;
  int a, b;
  scanf("%d", &x);

  for (int i=0;i<x;i++){
    scanf("%d %d", &a, &b);
    printf("%d\n", a+b);
  }

  return 0;
}
