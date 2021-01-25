#include <iostream>
#include <math.h>
//#include <system.h>
using namespace std;

float funct (float x)
{
	float f;
  f=pow(x,3)-30*x+40;
	return f;
}

float functD (float x)
{
	float f;
	f=3*pow(x,2)-30;
	return f;
}

int main()
{
	float x;
	cout<<"x0 = ";
	cin>>x;
	int i = 0;
	float k,a,b,e;

	for (;;)
	{
		++i;
		a = funct(x);
		b = functD(x);
		k = x - (a/b);
		cout<<"k = "<<k<<endl;
		e = x - k;
		x = k;

		if(e < 0.001)
		{
			cout<<"\nEpsilon = "<<e;
			cout<<"\nnr de operatii = "<<i;
			cout<<"\n";
			system("pause");
			exit(1);
		}

	}
	return 0;
}
