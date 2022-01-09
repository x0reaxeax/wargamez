#include <stdlib.h>
#include <stdio.h>

extern unsigned int calc_arg(unsigned int arg1, unsigned int arg2);

int main(int argc, const char *argv[]) {
    if (argc < 3) {
        return EXIT_FAILURE;
    }

    unsigned int result = calc_arg((unsigned int) atoi(argv[1]), (unsigned int) atoi(argv[2]));
    printf("Result: %u\n", result);
    
    return EXIT_SUCCESS;
}