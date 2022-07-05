#include <stdio.h>

int main(void) {
  int a, b;

  scanf("%d %d", &a, &b);

  if (b >= 45) {
    b = b - 45; 
    printf("%d %d", a, b);
  } else if (b < 45) {
    if (a == 0) {
      a = 23;
      b = b + 15;
      printf("%d %d", a, b);
    } else {
      a = a - 1;
      b = b + 15;
      printf("%d %d", a, b);
    }  
  }
  return 0;
}
