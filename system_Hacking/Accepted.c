#include <stdio.h>
#include <stdlib.h>

int main(void) {

    int n;
    scanf("%d", &n);
    int *arr;
    int s = 0;
    int answer = 0;
    arr = (int*)malloc(sizeof(int)*n);
    for (int i = 0;i < n;i++)
    {
        scanf("%d", &arr[i]);
    }
    if(arr[1] - arr[0] == arr[2] - arr[1]) {
      s = arr[1] - arr[0];
      answer = arr[n-1] + s;
    } else if (arr[1] / arr[0] == arr[2] / arr[1]) {
      s = arr[1] / arr[0];
      answer = arr[n-1] * s;
    }
  
  printf("%d\n", answer);
  return 0;
}
