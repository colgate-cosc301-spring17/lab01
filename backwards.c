#include<stdio.h>
#include<string.h>

/*
 * Lab01: C string manipulation and gdb
 * COSC 301, Operating Systems, Spring 2017
 */

char *flip(char *input) {
    int len = strlen(input) - 1;

    for (int i = 0; i < len/2; i++) {
        int j = len - i;
        input[i] = input[j];
        input[j] = input[i];
    }

    return input;
}

int main() {
    printf("Enter a string: ");
    fflush(stdout);

    char *string;
    fgets(string, 100, stdin);

    char *backwards = flip(string);
    printf("%s\n", backwards);
}
