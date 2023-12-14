#include <stdio.h>
#include <stdlib.h>

char** readaline() {
    char **s = malloc(8);
    *s = malloc(1000);
    fgets(*s, 1000, stdin);
    return s;
}

void printerr(char* out) {
    fprintf(stderr, "%s\n", out);
}

// char **inttostr(int i) {
//     char **s = malloc(8);
//     *s = malloc(10000);
//     itoa(i, *s, 10);
//     return s;
// }