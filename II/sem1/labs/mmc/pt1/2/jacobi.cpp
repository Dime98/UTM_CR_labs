#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
using namespace std;

#define max 10

int main()
{
	float s, s1, eps;
	float a[max + 1][max + 1], b[max + 1], x[max + 1], y[max + 1];
	int n, i, j;
	cout << "dati numarul de ecuatii si necunoscute " << endl; 	cin >> n;
	cout << "dati matricea sistemului " << endl;
	for (i = 1; i <= n; i++)
	for (j = 1; j <= n; j++){
		cout << "a[" << i <<"|"<< j << "]=";
		cin >> a[i][j];
	}
	cout << endl;
	cout << "dati vectorul termenilor liberi " << endl;
	for (i = 1; i <= n; i++){
		cout << "b[" << i << "]=";
		cin >> b[i];
	}
	cout << endl;
	cout << "dati aproximatia initiala a solutiei " << endl;
	for (i = 1; i <= n; i++){
		cout << "x[" << i << "]=";
		cin >> y[i];
	}
	cout << endl;
	cout << "dati eroarea " << endl; cin >> eps; cout << endl;
	s = eps + 1;
	while (s >= eps){
		for (i = 1; i <= n; i++)
		{
			s1 = 0;
			for (j = 1; j <= n; j++)
			if (j != i)s1 = s1 + a[i][j] * y[j]; x[i] = (b[i] - s1) / a[i][i];
		}
		s = 0;
		for (i = 1; i <= n; i++)
			s = s + abs(x[i] - y[i]);
		for (i = 1; i <= n; i++)
			y[i] = x[i];
	}
	cout << "Solutia aproximativa este " << endl;
	for (i = 1; i <= n; i++)
		cout << x[i] << endl;
	system("pause");
}
