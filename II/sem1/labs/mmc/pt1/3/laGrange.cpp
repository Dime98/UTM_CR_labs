#include<stdio.h>
main()
{
    float x[100],y[100],a,s=1,t=1,k=0;
    int n,i,j,d=1;
    printf("introduceti nr de termeni din tabel\n>> ");
      scanf("%d",&n);

    printf("\nintroduceti x si y: \n");

    for(i=0; i<n; i++){
      printf("x%d = ", i);
        scanf ("%f",&x[i]);
      printf("y%d = ", i);
        scanf("%f",&y[i]);
        puts(" ");
    }

    printf("\n\ntabel:(x|y)\n\n");
    for(i=0; i<n; i++){
        printf("%0.2f    %0.2f\n",x[i],  y[i]);
    }


    while(d==1){
        printf("\n\nintroduceti valoarea lui x p/u a afla f(x)\n>> ");
          scanf("%f",&a);

        for(i=0; i<n; i++)
        {
            s=1;
            t=1;
            for(j=0; j<n; j++){
                if(j!=i){
                    s=s*(a-x[j]);
                    t=t*(x[i]-x[j]);
                }
            }
            k=k+((s/t)*y[i]);
        }
        printf("\nvaloarea f(%.2f) = %.4f",a,k);
        printf("\npress 1 to continue and any other key to exit");
          scanf("%d",&d);
    }
}
