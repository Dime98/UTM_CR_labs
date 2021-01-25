#include<iostream>
#include<conio.h>

using namespace std;

int main(void)
{
    float a[10][10], b[10], x[10], y[10];
    int n = 0, m = 0, i = 0, j = 0;
    cout << "introdueti marimea matriciei 2d: ";
    cin >> n;

    for (i = 0; i < n; i++){
        for (j = 0; j < n; j++)
        {
      		  cout << "a[" << i <<"|"<< j << "]=";
            cin >> a[i][j];
        }
    }
    cout << "\nintroduceti valorile din partea dreapta a ecuatiei\n";


    for (i = 0; i < n; i++){
        cout << "introduceti valoarea no :(" << i << ", " << j << ") ";
        cin >> b[i];
    }
    cout << "\nvaloarea initiala x\n";


    for (i = 0; i < n; i++){
        cout << "introcuceti valoarea no. :(" << i<<"):";
        cin >> x[i];
    }
    cout << "\nintroduceti nr de interatie: ";
    cin >> m;


    while (m > 0){
        for (i = 0; i < n; i++)
        {
            y[i] = (b[i] / a[i][i]);
            for (j = 0; j < n; j++)
            {
                if (j == i)
                    continue;
                y[i] = y[i] - ((a[i][j] / a[i][i]) * x[j]);
                x[i] = y[i];
            }
            printf("x%d = %f    ", i + 1, y[i]);
        }
        cout << "\n";
        m--;
    }
    return 0;
}
