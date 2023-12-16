/*
 *      Olympus.c
 *      by: Ayda Aricanli, Valerie Zhang, Trevor Sullivan, Josh Kim, Tim Valk
 *      Built-in class for standard I/O and other useful functions used in
 *      codegen
 *      
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

char** readaline() {
    char **s = malloc(8);
    *s = malloc(1000);
    fgets(*s, 1000, stdin);
    int i = 0; 
    while ((*s)[i] != '\n') {
        i++;
    }
    (*s)[i] = '\0';
    return s;
}

bool streq(char *str1, char *str2) {
    int result = strcmp(str1, str2);

    if (!result) {
        return true;
    } 
    return false;
}

void printerr(char* out) {
    fprintf(stderr, "%s\n", out);
}

// Used to check permitted classes in codegen, not accessaible to the user
void class_permitted(char *str1, char **permits, int list_len) {
    for (int i = 0; i < list_len; i++) {
        if (streq(str1, permits[i])) {
            return;
        }
    }
    printf("RUNTIME ERROR: Class %s does not have access!\n", str1);
    exit(1);
}
