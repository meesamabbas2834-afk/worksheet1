#include <stdio.h>

int asm_main();

int main() {
    printf("Running the linked assembly procedure...\n");

    int data = asm_main();

    printf("Output obtained: %d\n", data);

    return 0;
}
