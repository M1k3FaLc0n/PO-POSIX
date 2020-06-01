#include <stdio.h>

int fact(unsigned long long int n){
    if (n == 1)
        return n;
    else
        return n + fact(n - 1);
}

int main (void) {
    unsigned long long int sum = 0.0,x,y;
    unsigned i;
    
    for (i = 1; i <= 100000; i++)
    {
        x = fact(i);
        sum += x;
        sum /= fact(i);
        sum += x;
    }
    return 0;
}