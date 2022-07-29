#include <stdio.h>

int main(void) {
  int c;
  int l;

  scanf("%d", &c);

  for (int i=0; i<c; i++){
    scanf("%d", &l);
    int score[1000], sum = 0;
		int avg = 0;
    double gold = 0.00;
    for (int k=0; k<l; k++){
      scanf("%d", &score[k]);
			sum += score[k];
      }
      avg = sum/l;
      int t = 0;
    for (int j = 0; j<l; j++){
      if (score[j]>avg) t++; 
      }
       printf("%.3f%%\n", (double)t * 100 / l);
  }
  return 0;
}
