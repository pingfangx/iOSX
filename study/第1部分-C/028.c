//
//  028.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>
static int a=10;
void staticFunction(){
    printf("a1= %d \n",++a);
    static int a=99;
    printf("a = %d \n",++a);
}
int main(){
    staticFunction();
    staticFunction();
    staticFunction();
}
