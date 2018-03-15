//
//  007.c
//  IOS
//
//  Created by pingfangx on 2017/2/24.
//
//

#include <stdio.h>
int main(){
    int a1=5>4;
    printf("a1 = %d \n",a1);
    
    int c1= 2==3>1;
    printf("c1 = %d \n",c1);
    
    int c2=4>3>2;
    printf("c2 = %d \n",c2);
    
    int c3=3+4>8-2;
    printf("c3 = %d \n",c3);
    
    int x=300;
    int result3=(x>200) && (++x==0);
    printf("x = %d \n",x);
    
    
    int y=10;
    int result6=(y<100) || (y++==10);
    printf("y = %d \n",y);
    
    
    int c=!20;
    printf("c = %d \n",c);
}
