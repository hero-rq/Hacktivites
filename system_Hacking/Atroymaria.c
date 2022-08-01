#include <stdio.h>

//TroyMartian, who has at least 3 antenna and at most 4 eyes;
//VladSaturnian, who has at most 6 antenna and at least 2 eyes;
//GraemeMercurian, who has at most 2 antenna and at most 3 eyes.

int main(void) {
  int x, y;
  scanf("%d", &x);
  scanf("%d", &y);

  if (x >= 3 && y <= 4) {
    printf("TroyMartian\n");
  } if ( x <= 6 && y >= 2) {
    printf("VladSaturnian\n");
  } if (x <= 2 && y <= 3) {
    printf("GraemeMercurian\n");
  } else {
    return 0;
  }
  }
