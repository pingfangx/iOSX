//
//  025.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>
int sum(int a,int b);
int main(){
    int (*p)(int a,int b)=sum;
    int b=(*p)(11,22);
    printf("b is %d \n",b);
    printf("b is %d \n",(*p) b(1,2));
    printf("b is %d \n",p(3,4));
}

int sum(int a,int b){
    return a+b;
}
