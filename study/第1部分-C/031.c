//
//  031.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>

struct Student {
    char *name;
    int age;
    float height;
};

int main(){
    
    struct Student stu1;
    stu1.name="pingfangx";
    
    printf("size of stu1 is %ld \n",sizeof(stu1));
    
    printf("name of stu1 is %s \n",stu1.name);
    
    struct Student stu2={"stu2",22,1.7};
    printf("stu2 name=%s,age=%d,height=%.2f \n",stu2.name,stu2.age,stu2.height);
    
    
    
    struct Student *p=&stu2;
    
    printf("stu2 name=%s,age=%d,height=%.2f \n",(*p).name,(*p).age,(*p).height);
    printf("stu2 name=%s,age=%d,height=%.2f \n",p->name,p->age,p->height);
    
    
    return 0;
}
