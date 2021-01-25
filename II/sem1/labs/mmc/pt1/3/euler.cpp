
/* CPP  Program to find approximation
   of a ordinary differential equation
   using euler method.*/
#include <iostream>
#include <cmath>
#define e 2.71828
using namespace std;

// Consider a differential equation
// dy/dx=(x + y + xy)
float func(float x, float y)
{
    return (0.1 * pow(y,1/3) + 0.2 * log(x + y) - 0.2);
}

// Function for Euler formula
void euler(float x0, float y, float h, float x)
{
    float temp = -0;

    // Iterating till the point at which we
    // need approximation
    while (x0 < x) {
        temp = y;
        y = y + h * func(x0, y);
        x0 = x0 + h;
        cout << "in punctul x = " << x0 << "\n    solutia aproximativa este: " << y << "\n\n";
    }

    // Printing approximation

}

// Driver program
int main()
{
    // Initial Values

    float x0 = 0;
    float y0 = 0;
    float h = 0;

    cout<< "x0 = ";
    cin >> x0;
    cout<< "y0 = ";
    cin >> y0;
    cout<< "h = ";
    cin >> h;

    // Value of x at which we need approximation
    cout<<"in ce punct x vream valoarea aproximatia: ";
    float x = 0;
    cin >> x;

    euler(x0, y0, h, x);
    return 0;
}
