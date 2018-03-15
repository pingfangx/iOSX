//
//  026.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>


int sum(int a,int b){
    return a+b;
}
int minus(int a ,int b){
    return a-b;
}

void count(int (*p)(int a,int b ),int a,int b){
    int result=p(a,b);
    printf("resutl is %d \n",result);
}


int main(){
    int x=4;
    int y=6;
    char op;
    scanf("%c",&op);
    
    int (*option)(int a,int b);
    switch (op) {
        case '+':
//            count(sum,x,y);
            option=sum;
            break;
        case '-':
//            count(minus,x,y);
            option=minus;
            break;
            
        default:
            break;
    }
    if(option!=NULL){
        count(option,x,y);
    }
}
