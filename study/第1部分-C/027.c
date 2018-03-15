//
//  027.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>
int main(){
    int a=10;
    int *p1=&a;
    int **p2=&p1;
    
    printf("**p2 is %p,%d \n",p2,**p2);
    
    int b=11;
    p1=&b;
    
    printf("**p2 is %p,%d \n",p2,**p2);
    
    return 0;
}
