#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(void) {
  while(1){
  char str[10] = {};
  int b[10] = {};
  int s=0;
    
  scanf("%s", str);
  if (str[0] == "#")
			exit(0);
  int panda = strlen(str);
  for (int i = 0;  i <= panda; i++){
    {
      switch(str[i]){
			case '-':
				b[i] = 0;
				break;
			case '\\':
				b[i] = 1;
				break;
			case '(':
				b[i] = 2;
				break;
			case '@':
				b[i] = 3;
				break;
			case '?':
				b[i] = 4;
				break;
			case '>':
				b[i] = 5;
				break;
			case '&':
				b[i] = 6;
				break;
			case '%':
				b[i] = 7;
				break;
			case '/':
				b[i] = -1;
				break;
			default:
				break; 
        }
      s += b[i] * pow(8, panda - i - 1);
			}
    }
    printf("%d\n", s);
    }
  return 0;
}
