#include <stdio.h>

int main(void) {
  int s[9] = {};
  int max;
  int w;

  for (int i = 0; i < 9; i ++) {
  scanf("%d",&s[i]); }

  max = s[0];
  for (int i = 0; i < 9; i ++) {
  if(max < s[i]) max = s[i]; }

  for (int i = 0; i < 9; i ++) {
  if(max == s[i]) w = i; }
  
  printf("%d\n", max);
  printf("%d", w+1);
  return 0;
}
