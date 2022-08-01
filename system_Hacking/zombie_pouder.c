#include <stdio.h>

//For each data set, there will be exactly one line of output. This line will be "MMM BRAINS" 
//if the number of brains the zombie eats is greater than or equal to the number of brains 
//the zombie requires to stay alive. Otherwise, the line will be "NO BRAINS".

int main(void) {
  int x, y, z;
  scanf("%d", &x);

  for (int i = 0; i < x; i++){
    scanf("%d", &y);
    scanf("%d", &z);
    if (y >= z) {
      printf("MMM BRAINS\n");
    } else {
      printf("NO BRAINS\n");
    }
  }

  }
