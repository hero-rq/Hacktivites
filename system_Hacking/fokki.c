#include <stdio.h>

int main(void) {
  int n;
  int s = 0;
  scanf("%d", &n);

  for (int i=1; i<=n; i++){
    s += i;
    }

  printf("%d\n", s);
  return 0;
}
