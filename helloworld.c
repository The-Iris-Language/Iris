#include <stdio.h>

struct D {
    int age;
    int poop;
};

void print_smth(char *s) {
    printf("%s", s);
}

int main() {
    print_smth("Hello world!\n");

    struct D dog = { 1, 0 };

    return 0;
}