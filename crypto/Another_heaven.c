#include <stdio.h>
#include <stdlib.h> // rand()함수 포함 라이브러리
#include <time.h> // time()함수 포함 라이브러리


int main() {
   int user;
   srand(time(NULL)); // 매번 다른 시드값 생성
   int panda=0;
   printf("가위(0), 바위(1), 보(2)를 입력하세요 : ");
   scanf("%d", &user);
   user = user*rand();
   user = user%9;
   panda = rand()%9; // 실험 결과 0~8까지 생성 012 345 678 
   if (panda == user) printf("비겼어요. \n");
   else if (panda > user) printf("이기셨네요. \n");
   else printf("졌어요. \n");
   return 0;
}
