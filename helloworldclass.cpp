#include <stdio.h>
#include <string>

using namespace std;

class Dog {
    public: 
        int weight;
        string name;
        
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