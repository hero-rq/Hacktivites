#include <stdio.h>

int main(void) {
  int point;
  scanf("%d", &point) ; 

  if (point >=90 && point <=100) {
    printf("A\n");
  } else if (point >= 80 && point <= 89) {
    printf("B\n");
  } else if (point >= 70 && point <= 79) {
    printf("C\n");
  } else if (point >= 60 && point <= 69) {
    printf("D\n");
  }  else {
    printf("F\n");
  }
    return 0;
}
