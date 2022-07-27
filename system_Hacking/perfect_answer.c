#include <stdio.h>

int main(void) {
  int a[9];
  int cnt;
  int m[100] = {0};
  int k;


  for (int i = 0; i < 10; i++)
	scanf("%d\n", &a[i]);

  for (int i = 0; i < 10; i++) {
	  a[i] = a[i]%42;
    k = a[i];
    m[k]++; }

  for (int k = 0; k < 100; k++){
    if (m[k] != 0) { 
      cnt++;}
  }

   	printf("%d\n", cnt);


return 0;
}
