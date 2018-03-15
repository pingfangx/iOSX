//
//  main.m
//  123
//
//  Created by pingfangx on 2018/3/27.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

void filt(NSArray *array,NSString *condition){
    NSLog(@"%@",[array filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:condition]]);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *persons=@[
                           [Person personWithName:@"赵1" andAge:11],
                           [Person personWithName:@"钱2" andAge:22],
                           [Person personWithName:@"孙3" andAge:33],
                           [Person personWithName:@"李4" andAge:44],
                           [Person personWithName:@"周5" andAge:55]
                           ];
        //可以不写 self
        NSPredicate *predicate=[NSPredicate predicateWithFormat:@"self.age<%d",30];
        NSArray *result=[persons filteredArrayUsingPredicate:predicate];
        NSLog(@"%@",result);
        
        //&&
        filt(persons,@"name='赵1'&& age < 20");
        
        //in
        filt(persons, @"name in {'赵1','钱2'} || age in {33,44}");
        
        //起始
        filt(persons, @"name BEGINSWITH '赵' || name ENDSWITH '5'");
        
        //包含
        filt(persons, @"name CONTAINS '2'");
        
        //like
        /*
            * 多个
            ? 一个
         */
        filt(persons, @"name LIKE '*5'");
        
    }
    return 0;
}
