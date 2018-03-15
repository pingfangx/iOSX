//
//  014.c
//  IOS
//
//  Created by pingfangx on 2017/2/24.
//
//

#include <stdio.h>
#include <string.h>
int main(){
    
    char *s1="s1";
    printf("s1 = %s \n",s1);
    
    char s2[3]={'s','2','\0'};
    printf("s2 = %s \n",s2);
    
    char s3[3];
    s3[0]='s';
    s3[1]='3';
    s3[2]='\0';
    printf("s3 = %s \n",s3);
    
    char s4[]={'s','4','\0'};
    printf("s4 = %s \n",s4);
    
    char *str="1234";
    
    long size1=strlen(str);
    long size2=sizeof(str);
    long size3=sizeof(*str);
    printf("sieze is %ld,%ld,%ld\n",size1,size2,size3);
    
    
    char *z1;
    char z2[100];
    printf("z1 address %p,z2 address %p \n",z1,z2);
    z1[0]='w';
    printf("z1[0] is %c \n",z1[0]);
}
