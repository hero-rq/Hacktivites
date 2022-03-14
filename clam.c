#include <stdlib.h>

int main(int argc, char** argv){
        unsigned int res =0;

        for(int i=2; i<argc; i++){
                int arg = 0;
                arg = (argv[i][0] -0x30)*10 + argv[i][1]-0x30;
                if(arg % 3 ==0)
                        res += arg;
                else
                        res += arg*2;
        }
        res %= 100;
        return res;
}
######################################################################
#include <stdio.h>
#include <stdlib.h>
int main(int argc, char* argv[]){
    int answer=0;
    int num;

    for(int i=1; i<argc; i++) {
        num = (argv[i][0]-'0')*10 + (argv[i][1]-'0');

        if(num%3==0)
            answer += num;
        else
            answer += num*2;
    }
    printf("%d",answer%100);
    return answer%100;
}

둘다 gdb에 넣었을 때 값이 정확히 일치 
