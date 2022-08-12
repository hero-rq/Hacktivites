#include <stdio.h>

main() {
	char panda[255];
	while (1) {
		int count = 0;		//count: 모음의 개수
		gets(panda);
		if (panda[0] == '#')	//#을 입력받으면 실행 종료
			break;
     for (int i = 0; panda[i] != '\0'; i++) {
       if (panda[i] == 'a' || panda[i] == 'A') {
         count++;
       }
       else if (panda[i] == 'e' || panda[i] == 'E') {
         count++;
       }
       else if (panda[i] == 'i' || panda[i] == 'I') {
         count++;
       }
       else if (panda[i] == 'o' || panda[i] == 'O') {
         count++;
       }
       else if (panda[i] == 'u' || panda[i] == 'U') {
         count++;
       }
    }
		printf("%d\n", count);
	}
	return 0;
}
