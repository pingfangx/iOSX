//
//  main.m
//  067
//
//  Created by pingfangx on 2018/3/19.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建
    NSArray *a1=[[NSArray alloc] initWithObjects:@"1",@"2",@"3", nil];
    NSLog(@"%@",a1.description);
    
    NSLog(@"arrayWithObjects %@",[NSArray arrayWithObjects:@"3",@"4",@"5", nil]);
    NSLog(@"arrayWithObject %@",[NSArray arrayWithObject:@"6"]);
    NSLog(@"arrayWithArray %@",[NSArray arrayWithArray:a1]);
    
    //取值
    NSLog(@"objectAtIndex %@",[a1 objectAtIndex:0]);
    NSLog(@"count %lu",(unsigned long)[a1 count]);
    NSLog(@"count %lu",a1.count);
    
    NSLog(@"containsObject %hhd",[a1 containsObject:@"2"]);
    
    NSLog(@"indexOfObject %lu",(unsigned long)[a1 indexOfObject:@"2"]);
    
    NSLog(@"componentsJoinedByString %@",[a1 componentsJoinedByString:@"--"]);
    NSLog(@"componentsJoinedByString %@",[[NSArray arrayWithObjects:@"1",[NSNumber numberWithInt:2], nil] componentsJoinedByString:@"--"]);
    
    NSLog(@"lastObject %@",a1.lastObject);
    NSLog(@"arrayByAddingObject %@",[a1 arrayByAddingObject:@"-41"]);
    
    //遍历
    for(int i=0;i<a1.count;i++){
        NSLog(@"%d is %@",i,[a1 objectAtIndex:i]);
    }
    for (NSString *s in a1) {
        NSLog(@"%@",s);
    }
    
    NSLog(@"%@",@[@"a",@"b",@"c"]);
    
    NSMutableArray *ma=[NSMutableArray arrayWithObjects:@"a",@"b",@"c", nil];
    NSLog(@"NSMutableArray %@",ma);
    
    [ma addObjectsFromArray:a1];
    NSLog(@"addObjectsFromArray %@",ma);
    
    [ma addObject:a1];
    NSLog(@"addObject %@",ma);
    
    
    [ma insertObject:@"test" atIndex:2];
    NSLog(@"insertObject %@",ma);
    
    
    [ma removeObject:a1];
    NSLog(@"removeObject %@",ma);
    
    //虽然设置了容量也不行
//    [[NSMutableArray arrayWithCapacity:10] insertObject:@"abc" atIndex:2];
    
    [ma replaceObjectAtIndex:2 withObject:@"replace"];
    NSLog(@"replaceObjectAtIndex %@",ma);
    
    
    [ma exchangeObjectAtIndex:0 withObjectAtIndex:2];
    NSLog(@"exchangeObjectAtIndex %@",ma);
    
    [ma removeLastObject];
    NSLog(@"removeLastObject %@",ma);
    
    [ma removeObjectAtIndex:0];
    NSLog(@"removeObjectAtIndex %@",ma);
    
    [ma removeAllObjects];
    NSLog(@"removeAllObjects %@",ma);
    return 0;
}
