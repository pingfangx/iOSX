//
//  023.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>

int main(){
    int a[3]={10,20,30};
    
    printf("a is %p ,address of a is %p,address of a[0] is %p \n",a,&a,&a[0]);
    
    
    int *p=a;
    for(int i=0;i<3;i++){
        printf("p is %p \n",p);
        printf("a[%d] is %d \n",i,*p);
        p++;
    }
    
    return 0;
}
