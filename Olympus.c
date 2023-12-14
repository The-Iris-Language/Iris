#include <stdio.h>
#include <stdlib.h>

char** getLine() {
    char **s = malloc(8);
    *s = malloc(1000);
    fgets(*s, 1000, stdin);
    return s;
}