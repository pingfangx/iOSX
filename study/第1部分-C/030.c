//
//  030.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>

//note extern does not assign a variable
extern int a;
int a=100;
int main(){
    
    printf("a = %d \n",a);
    return 0;
}
