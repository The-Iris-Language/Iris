#include <stdio.h>
#include <string>

using namespace std;

class Dog {
    public: 
        
        string name;
        int age;
        int weight;
        
        Dog() {
            weight = 10;
            name = "Bozo";
        }
        
        void woof() {
            printf("ruh roh!\n");
        }
};

int main() {
    Dog d = Dog();
    return 0;
}

void initDog(Dog d) {
    d.weight = 3;
}