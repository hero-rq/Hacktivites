#include <stdio.h>
#include <stdlib.h>
#include <time.h> 

int main() {
  int i;
  int maxindex;

  int a[10];
  int b[10];
  int c[10];

  int all[10];
  float avr[10];

  srand(time(NULL));

  for (i=0; i<=9; i++){
    a[i] = rand()%101;
    b[i] = rand()%101;
    c[i] = rand()%101;
  }

  for (i=0; i<=9; i++){
    all[i] = a[i] + b[i] + c[i];
    avr[i] = all[i] / 3.0;
  }

  maxindex = 0;
  for (i=0; i<=9; i++){
    if (all[maxindex] < all[i]){
      maxindex = i;
    }
  }

  for (i=0; i<=9; i++) {
    printf("%d) %d\t %d\t %d\t %d\t %.2f\n", i, a[i], b[i], c[i], all[i], avr[i]);
  }
  printf("가장 큰 것은 %d : ", maxindex);

  return 0;
}
