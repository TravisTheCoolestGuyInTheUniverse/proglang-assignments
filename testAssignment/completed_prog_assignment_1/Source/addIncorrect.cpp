#include <stdlib.h>
#include <iostream>
#include <cmath>
using namespace std;

int main() {
	int x, y;
	cout << " Enter two integers to be added together." << endl;
	cin >> x >> y;
	x = abs(x);
	y = abs(y);
	cout << " " << x << " + " << y << " = " << x+y << endl;
}