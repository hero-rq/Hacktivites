#include <stdio.h>
main(){
    int s, i, j;
    scanf("%d", &s);
    for(i = 1; i <= s; i++){
        for (j = 1; j <= (s-i); j++)
            printf(" ");
        for (j = 1; j <= i; j++)
            printf("*");
        printf("\n");
    }
}
