#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char buf[32];
int main(int argc, char* argv[], char* envp[]){
        if(argc<2){
                printf("pass argv[1] a number\n");
                return 0;
        }
        int fd = atoi( argv[1] ) - 0x1234;
        int len = 0;
        len = read(fd, buf, 32);
        if(!strcmp("LETMEWIN\n", buf)){
                printf("good job :)\n");
                system("/bin/cat flag");
                exit(0);
        }
        printf("learn about Linux file IO\n");
        return 0;

}


fd = atoi ( argv[1] ) - 0x1234; 

./fd 하고 숫자를 입력하거나 문자를 입력할 때 그게 argv[1]에 들어간다고 가정 
그걸 - 0x1234 한 값이 fd에 들어간다. 
0x1234는 10진수로 4660 

read(fd, buf, 32) 
-> fd가 가리키는 곳을 32바이트 읽어 buf에 저장한다 

그걸 strcmp로 비교하니까 "LETMEWIN"를 넣으면 된다. 

종합 : ./fd 4660하면 hang되는데 그 때 일치하는 "LETMEWIN"값을 넣는다 
그러면 해당 플래그 값이 나옴 
