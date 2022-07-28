#include <stdio.h>
#include <string.h>

int main(void) {
    int s, k;
    int input;
    char panda[80];

    scanf("%d", &input);

    for(int i=0; i<input; i++) {
        k = 0;
        s = 1;
        scanf("%s", panda);
      for(int j=0; j<strlen(panda); j++) {
            if(panda[j] == 'O') {
              k += s;
              s++;
              } 
        if(panda[j] == 'X') {
          s = 1;
              }
            }
      printf("%d\n", k);
      }
  return 0;
}
