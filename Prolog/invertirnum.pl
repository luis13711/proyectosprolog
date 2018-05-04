invertir(Num,Inv,Y):-
	Num>0,
	Inv1 is Inv*10+(Num mod 10),
	Num1 is Num/10,
	invertir(Num1,Inv1,Z),
	Y is Inv1+Z;
	Y is 0.

/*
#include "iostream"
using namespace std;

int _tmain(int argc, _TCHAR* argv[])
{
int num, inv=0;
cout<<"Ingresar un numero entero : ";cin>>num;

while(num>0)
{
inv=inv*10+(num%10);
num=num/10;
}
cout<<"Numero invertido : "<<inv<<endl;
system("pause");
}
*/
