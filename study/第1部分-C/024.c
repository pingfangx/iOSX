//
//  024.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>
#include <string.h>
int main(){
    //use char a[] or char *a,use array can use sizeof
    //but use point the size is not the string but the point
    char a[]="hello world!";
    printf("a is %s \n",a);
    
    int len=sizeof(a);//use sizeof instead of strlen,because should contain '\0'
    char b[20];
    for(int i=0;i<len;i++){
        printf("a[%d] is %c \n",i,a[i]);
        *(b+i)=*(a+i);
    }
    printf("b is %s \n",b);
    
    
    char c[]="hello";
    printf("c is %s \n",c);
    c[1]='X';
    printf("c is %s \n",c);
    
    
    char *d ="hello";
    printf("d is %s ,address is %p\n",d,d);
    for(int i=0;i<10;i++){
        printf("d[%d] is %c \n",i,d[i]);
    }
    d[1]='X';
    printf("d is %s \n",d);
    
}
