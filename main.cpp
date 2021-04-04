#include <iostream>
#include <stdexcept>
using namespace std;
//functions declaration:
double func(double x);

int main() {
    double a, b, c, eps;
    eps = 1E-6;
    a = -2;
    b = 1;
    if (func(a)*func(b)>0) throw runtime_error("Wrong initial interval");
    c = (a+b)/2;
    while (func(c)>eps){
        if (func(c)*func(a)<0) a=c;
        else b=c;
        c = (a+b)/2;
    }
    cout << "zero of the function is " << c;
    return 0;
}

//functions:
double func(double x) {
    double f;
    f = x*x-2;
    return f;
}
