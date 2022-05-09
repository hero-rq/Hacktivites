#include <stdio.h>  

int check(unsigned int input1, unsigned int input2) {
    unsigned int tmp1;
    unsigned int tmp2;
    unsigned int tmp3;
    if (input1 > 0x1000 || input2 > 0x1000) {
        return 0;
    }
    tmp1 = input1 * input2;
    tmp2 = input1 / input2;
    tmp3 = input1 + input2;
    if (tmp1 == 0x6e7312 && tmp2 == 0x21 && tmp3 == 0x1b21) {
        return 1;
    }
    else {
        return 0;
    }
}
int main() {
    unsigned int input1;
    unsigned int input2;
    printf("input: ");
    scanf_s("%d %d", &input1, &input2);
    if (check(input1, input2)) {
        puts("yes");
    }
    else {
        puts("no");
    }
    return 0;
}
