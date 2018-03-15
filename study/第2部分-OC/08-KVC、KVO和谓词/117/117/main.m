//
//  main.m
//  117
//
//  Created by pingfangx on 2018/3/26.
//  Copyright © 2018年 pingfangx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Author.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Book *book=[[Book alloc] init];
//        
//        Author *author=[[Author alloc]init];
//        
//        [book setValue:author forKey:@"author"];
//        [book setValue:@"123" forKeyPath:@"author.name"];
//        
//        NSLog(@"%@",[author valueForKey:@"name"]);
//        NSLog(@"%@",[book valueForKeyPath:@"author.name"]);
        
        //KVC 的运算
        Author *author=[[Author alloc] init];
        [author setValue:@"平方X" forKey:@"name"];
        
        Book *book1=[[Book alloc] init];
        book1.name=@"书1 ";
        book1.price=9.9;
        
        Book *book2=[[Book alloc] init];
        book2.name=@"书2";
        book2.price=10;
        
        NSArray *books=@[book1,book2];
        [author setValue:books forKey:@"issueBooks"];
        
        NSArray *priceArray=[author valueForKeyPath:@"issueBooks.price"];
        NSLog(@"priceArray %@",priceArray);
        
        NSLog(@"count is %@",[author valueForKeyPath:@"issueBooks.@count"]);
        NSLog(@"price sum is %@",[author valueForKeyPath:@"issueBooks.@sum.price"]);
        NSLog(@"price avg is %@",[author valueForKeyPath:@"issueBooks.@avg.price"]);
        NSLog(@"price max is %@",[author valueForKeyPath:@"issueBooks.@max.price"]);
        NSLog(@"price min is %@",[author valueForKeyPath:@"issueBooks.@min.price"]);
    }
    return 0;
}
