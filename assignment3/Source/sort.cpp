#include <iostream>

using namespace std;

/*
basically i'll have to template this. 
*/

template <class T>
void sortGeneric(T array[], int len) {
    //brute force sorting algorithm
    for (int i=0; i<len; i++) {
        for (int j=i; j<len; j++) {
            if (array[i] > array[j]) {
                T temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
}

int main() {
    int len;
    //the first line of input should be the length of the array.
    cin >> len;
    //declare and populate array from input 
    int array[len];
    for (int i=0; i<len; i++) {
        cin >> array[i];
    }
    //sort the elements in the array
    sortGeneric(array, len);
    //output the sorted array
    string output = "";
    for (int i=0; i<len; i++) {
        output.append(" ");
        output.append(to_string(array[i]));
    }
    cout << output << endl;
}