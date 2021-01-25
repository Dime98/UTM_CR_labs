#include <iostream>
#include <math.h>
#include <windows.h>
using namespace std;

float functie (float x)
{
  return x*x*x-30*x-40;
}

int main ()
{

    float a, b, c, g, h;
    cout<< "a = ";
    cin>>a;
    cout<< "b = ";
    cin>>b;
    int i = 0;

    for(;;){
      ++i;
      c=(a+b)/2;

      g=functie(a)*functie(c);
      h=functie(b)*functie(c);
      cout<<"a = "<<a<<"  "<<"   c = "<<c<<"  "<<"   b = "<<b<<endl;

      if(g<0){
        b = c;
        cout<<"[+] p/u (a,c)"<<endl;
      }

      if(h<0){
         a = c;
         cout<<"[+] p/u (c,b)"<<endl;

      }


      if (g > 0 && h > 0) {
        cout<<"\n[-] intervalul ("<< a << "|" << b <<") nu merge"<<endl;
        exit(1);
      }
      cout<<"\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"<<endl;


      if((b-a) < 0.001){
        cout<<"epsilon "<<b-a<<endl;
        cout<<"["<<a<<" | "<<b<<"]\n";
        cout<<"nr de injumatatiri: "<<i<<endl;

        system("pause");
        exit(1);
      }

  }
}
