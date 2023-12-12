#include <stdio.h>
#include <string>

using namespace std;

class Dog {
    public: 
        
        int age;
        int weight;
        char name[];
        
        Dog() {
            weight = 10;
            // name = "Bozo";
        }
        
        void woof() {
            printf("ruh roh!\n");
        }
};

int main() {
    Dog d = Dog();
    d.woof();
    return 0;
}

void initDog(Dog d) {
    d.weight = 3;
}