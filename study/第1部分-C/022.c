//
//  022.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>



void change(int v){
    v=100;
}
void change2(int *p ){
    *p=100;
}


int main(){
    int a;
    a=10;
    
    int *p=&a;
    
    printf("the address of a is %p ,the p is %p ,the address of p is %p \n",&a,p,&p);
    
    printf("the a is %d,*p is %d \n",a,*p);
    
    
    *p=9;
    printf("the a is %d,*p is %d \n",a,*p);
    
    int a2=*p;
    printf("a is %d,a2 is %d,*p is %d \n",a,a2,*p);
    
    a2=11;
    
    printf("a is %d,a2 is %d,*p is %d \n",a,a2,*p);
    
    
    int c=10;
    printf("c is %d \n",c);
    
    change(c);
    printf("change c is %d \n",c);
    
    change2(&c);
    printf("change2 c is %d \n",c);
    
    return 0;
}
