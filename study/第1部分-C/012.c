//
//  012.c
//  IOS
//
//  Created by pingfangx on 2017/2/24.
//
//

#include <stdio.h>
int main(){
    
    //内存地址
    int a=10;
    printf("a的地址：%p\n",&a);
    
    int a2[3];
    a2[0]=213;
    printf("array address is %p \n",&a2);
    for(int i=0;i<sizeof(a2)/sizeof(int);i++){
        printf(" %d is %d,address is %p \n",i,a2[i],&a2[i]);
    }
    
    return 0;
}
