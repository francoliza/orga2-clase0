#include <stdio.h>
extern void imprimir_parametros(int a, double f, char* s);
int main(){
    int a = 1;
    int b = 2;
    int c = 3;
    int d = 4;
    int e = 5;
    imprimir_parametros(14, 4.5 ,"HOLA");
}