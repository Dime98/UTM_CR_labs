#include <iostream>
#include <math.h>

using namespace std;

#define max 15

int main(void)
{
	float s;
	float a[max + 1][max + 1][max + 1], b[max + 1][max + 1], x[max + 1];
	int n, i, j, k;
	cout << "dati dimensiunea matricii" << endl; 	cin >> n;
	cout << "dati matricea sistemului " << endl;

	for (i = 1; i <= n; i++)
	for (j = 1; j <= n; j++){
		cout << "a[" << i <<"|"<< j << "]=";
		cin >> a[i][j][1];
	}

	cout << endl;
	cout << "dati vectorul termenilor liberi " << endl;

	for (i = 1; i <= n; i++){
		cout << "b[" << i << "]=";
		cin >> b[i][1];
	}

	cout << endl;

	for (k = 1; k <= n - 1; k++){
		for (i = 1; i <= n; i++)
		for (j = 1; j <= n; j++){
			if (i <= k)a[i][j][k + 1] = a[i][j][k];
			else if (j <= k)a[i][j][k + 1] = 0;
			else a[i][j][k + 1] = a[i][j][k] - a[i][k][k] * a[k][j][k] / a[k][k][k];
		}
		for (i = 1; i <= n; i++)
		if (i <= k)b[i][k + 1] = b[i][k];
		else b[i][k + 1] = b[i][k] - a[i][k][k] * b[k][k] / a[k][k][k];
	}

	x[n] = b[n][n] / a[n][n][n];

	for (i = n - 1; i >= 1; i--)
	{
		s = 0;
		for (j = i + 1; j <= n; j++)
			s = s + a[i][j][i] * x[j];
		x[i] = (b[i][i] - s) / a[i][i][i];
	}

	cout << "Solutia aproximativa este:" << endl;

	for (i = 1; i <= n; i++)
		cout << x[i] << ' ';
	cout << endl;
	system("pause");
}
