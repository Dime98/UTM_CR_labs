#include <iostream>
#include <math.h>
using namespace std;

float Fi (float x)
{
	float f;
	f=pow(x,3)/30+4/3;
	return f;
}


int Fi_d(float a, float b, float c)
{
	int i=0;
	float d,f,g;
	d=pow(a,2)/10;
	if(d<1)	{
		cout<<"\nlimita (1) lucreaza\n";
		cout<<d<<" < 1 \n";
		i++;
	}

	f=pow(b,2)/10;
	if(f<1){
		cout<<"limita (2) lucreaza\n";
		cout<<f<<" < 1 \n";
		i++;
	}

	g=pow(c,2)/10;
	if(g<1){
		cout<<"limita (3) lucreaza\n";
		cout<<g<<" < 1 \n";
		i++;
	}

	cout<<endl;
	cout<<endl;
	return i;
}





int main()
{
cout<<"HELLO\n";
 float a,b,c;
 cout<< "introduceti limitele \n>> ";
	cin>>a;		cout<<">> ";
	cin>>b;		cout<<">> ";
	cin>>c;
 int d = Fi_d(a,b,c);

if(d==3)
{
	int m=0;
	int v=1;
	float y=a;
	float x;
	float k;
	while(m==0)
	{

		x=Fi(y);
		k=y-x;
		y=x;

		cout<<"x"<<v<<" = "<<x<<endl;
		v++;
		if(k<0.001){
			m=1;
			cout<<"\nEpsolon="<<k;
		}
	}
}
else{
	cout<<"eroare";
	exit (1);
}
}
