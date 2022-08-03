#include <stdio.h>

int main(void) {
  int x=2;
  
  while(x!=0) {  
  int temp;
  int n2, n4;
  scanf("%d", &x);

  temp = 3*x;

  if (temp%2 ==0) {
    printf("even ");
    n4 = x / 2;
  } else {
    printf("odd ");
    n4 = (x -1) / 2;
  }
  
  printf("%d\n", n4);
  return 0; }
}
