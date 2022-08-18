#include <stdio.h>
#include <stdlib.h>

int main(void) {
   char c1;
   char s1[256];
   int t1=0;
  while (1) {
    scanf("%c", &c1);
    scanf("%s", s1);
   for (int i = 0; i < 256; i++) {
      if (c1 >= 97 && c1 <= 122)
            {
                if (s1[i] == c1 || s1[i] == c1 + 32)
                    t1++;
            }
            else  if (c1 >= 65 && c1 <= 90)
            {
                if (s1[i] == c1 || s1[i] == c1 - 32)
                    t1++;
            } 
     }
    printf("%c %d\n", c1, t1);
  }
  
  return 0;
}
