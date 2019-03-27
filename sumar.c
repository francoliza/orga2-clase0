#include<stdio.h>
extern double sumar(double, double);
extern void imprime_parametros(int, double, char*);
int main(){
    printf("%5.2f",sumar(4,3));
    return 0;
}