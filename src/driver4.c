#include <stdio.h>

extern int asm_range_sum(int min_val, int max_val);

int main() {
    int low, high;
    int calculated_sum;

    printf("Input the starting integer: ");
    scanf("%d", &low);

    printf("Input the ending integer: ");
    scanf("%d", &high);

    calculated_sum = asm_range_sum(low, high);

    if (calculated_sum != -1) {
        printf("Total summation from %d up to %d equals: %d\n", low, high, calculated_sum);
    } else {
        printf("Error: The specified range is not valid.\n");
    }

    return 0;
}
