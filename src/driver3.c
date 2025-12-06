#include <stdio.h>

extern int asm_array_sum();

int main() {
    printf("Starting summation process (1-100)...\n");
    int total = asm_array_sum();
    printf("Final Result: %d\n", total);
    return 0;
}
