#include <iostream>

using namespace std;

int main() {
	int* ptr; 
	ptr = new double[3];
	delete [] ptr;
}
