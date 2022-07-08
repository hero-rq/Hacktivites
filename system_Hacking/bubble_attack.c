#include <stdio.h>

int main(void) {
  int i;
  int a;
  int temp;
  int numArr[1024] = {0,};
  scanf("%d", &a);

  for (i=0; i<a; i++) {
    scanf("%d\n", &numArr[i]);
  }

  for (i =0; i < a; i++) {
  for (int j = 0; j < a; j++) {
  if (numArr[i] < numArr[j]) {
  temp = numArr[i];
  numArr[i] = numArr[j];
  numArr[j] = temp;
  }
  }
  }   

  for (i=0; i<a; i++){
    printf("%d\n", numArr[i]);
    }
  
  return 0;
}
