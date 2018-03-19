//
//  Person.m
//  01-runtime消息机制
//
//  Created by apple on 2018/3/12.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)eat{
    NSLog(@"吃饭了");
}

-(void)run:(NSInteger)mit{
    NSLog(@"跑了%ld米",(long)mit);
}
@end
