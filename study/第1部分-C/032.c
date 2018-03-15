//
//  032.c
//  IOS
//
//  Created by pingfangx on 2017/2/27.
//
//

#include <stdio.h>

struct Student {
    char name[10];
    char number[10];
    float score;
};


void compare(struct Student students[],int length);

enum Week{
    mon,
    the,
    wed,
    thu,
    fri,
    sat,
    sun,
};
enum Week2{
    mon
};

void weekday(enum Week week);
int main(){
    /*
    struct Student students[2];
    for(int i=0;i<2;i++){
        char name[10];
        char number[10];
        float score;
        scanf("%s %s %f",students[i].name,students[i].number,&students[i].score);
    }
    compare(students,2);
    */
    
    weekday(sun);
    
    return 0;
}

void weekday(enum Week week){
    switch (week) {
        case sun:
            printf("sunday");
            break;
            
        default:
            break;
    }
}

void compare(struct Student students[],int length){
    float max=0;
    int max_index=0;
    for(int i=0;i<length;i++){
        struct Student stu=students[i];
        printf("name %s,number %s,score %.2f \n",stu.name,stu.number,stu.score);
        if(stu.score>max){
            max=stu.score;
            max_index=i;
        }
        
    }
    struct Student *p=&students[max_index];
    printf("higher is %s,%s,%.2f \n",p->name,p->number,p->score);
}
