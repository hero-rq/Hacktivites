#include <stdio.h>

int main(void) {
  int s;
  scanf("%d", &s);

  if (s%4 != 0) {
    printf("0");
  } else if (s%100 != 0) {
    printf("1");
  } else if (s%400 == 0) {
    printf("1");
  } else {
    printf("0");
  }
  return 0;
}
