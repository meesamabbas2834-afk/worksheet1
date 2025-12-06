#include <stdio.h>

void asm_task2(int val);

int main() {
    int user_input;

    printf("Please input a value between 50 and 100: ");
    scanf("%d", &user_input);

    asm_task2(user_input);

    return 0;
}
