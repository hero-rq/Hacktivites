#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	// 변수 선언
	int i;
	int j;
	int data[7];
	
	// 랜덤성
	srand(time(NULL));
	
	// 전체 숫자
	for(i=0; i<7; i++)
	{
		data[i]=rand()%45+1;
		for(j=0; j<i; j++)
		{
			if(data[i] == data[j])
			{
				i--;
				break;
			}
		}
	}
	
	// 출력
	for(i=0; i<7; i++)
	{
		printf("%d\t", data[i]);
	}
	printf("\n");
	 
	return 0;
}
