#include<stdlib.h>
#include <iostream>

using namespace std;

void testPrimitiveValue(int formal1, int& formal2) {
    cout << "primitive inside function call: " << formal1 << " " << formal2 << endl;
    formal1 = 1;
    formal2 = 3;
}

void printArray(int array[], int len) {
    for (int i=0; i<len; i++) {
        cout << array[i] << " ";
    }
}

void testArrays(int formal1[], int* formal2, int len) {
     cout << "arrays inside function call: ";
    printArray(formal1, len);
    cout << " | ";
    printArray(formal2, len);
    cout << endl;

    formal1[0] = 12;
    formal1[len-1] = 6;

    formal2[0] = 12;
    formal2[len-1] = 6;
}

class simple {
    public:
    int x;
    string yeet;

    simple() {
        x = 7;
        yeet = "yeet";
    }
};

void testClass(simple formal1) {
    cout << "class member variables inside function call: " << formal1.x << " " << formal1.yeet << endl;
    formal1.x = 12;
    formal1.yeet = "yeet is a stupid word";
}

int main() {
    cout << "****TESTING C++****" << endl;
    //      ****TESTING PRIMITIVE PARAMETERS****
    int actual1, actual2;
    actual1 = 0;
    actual2 = 0;
    cout << "primitive before function call: " << actual1 << " " << actual2 << endl;
    testPrimitiveValue(actual1, actual2);
    //so it is possible to pass in primitve values both by value and by reference. 
    cout << "primitive after function call: " << actual1 << " " << actual2 << endl << endl;

    //      ****TESTING ARRAY PARAMETERS****
    int len = 3;
    int actual3[3] = {0, 0, 0};

    int* actual4 = new int[3];
    actual4[0] = 0;
    actual4[1] = 0;
    actual4[2] = 0;

    cout << "arrays before function call: ";
    printArray(actual3, len);
    cout << " | ";
    printArray(actual4, len);
    cout << endl;

    testArrays(actual3, actual4, len);

    cout << "arrays after function call: ";
    printArray(actual3, len);
    cout << " | ";
    printArray(actual4, len);
    cout << endl << endl;

    //      ****TESTING CLASS PARAMETERS****
    simple actual5 = simple();
    cout << "class member variables before function call: " << actual5.x << " " << actual5.yeet << endl;
    testClass(actual5);
    cout << "class member variables after function call: " << actual5.x << " " << actual5.yeet << endl << endl;
    


}