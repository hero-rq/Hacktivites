#include <stdio.h>

int main(void) {
  int a,b,c;
  int k[10000] = { 0 };
  int i = 0; 

  scanf("%d", &a);
  scanf("%d", &b);
  scanf("%d", &c);

  int x; 
  x = a * b * c;

  while(x != 0)
  {
	i = x % 10;
	x /= 10;
	k[i]++;
  }

for (int i = 0; i < 10; i++)
	printf("%d\n",k[i]);

return 0;
}
