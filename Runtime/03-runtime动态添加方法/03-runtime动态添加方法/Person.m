//
//  Person.m
//  03-runtime动态添加方法
//
//  Created by apple on 2018/3/13.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "Person.h"
#import <objc/message.h>
//做一个动态添加方法的
@implementation Person
void wang(id self,SEL _cmd) {
//    _cmd : 当前方法方法编号
    NSLog(@"吃东西");
}
+(BOOL)resolveInstanceMethod:(SEL)sel{
    
    NSLog(@"%@",NSStringFromSelector(sel));
    if (sel==NSSelectorFromString(@"eat")) {
        
        //class:给那个类添加方法
        //SEL:添加那个方法
        //IMP：方法实现-》函数-》函数入口-》函数名
        class_addMethod(self, sel, (IMP)wang, "v@:");
    }
    return [super resolveInstanceMethod:sel];
}
@end
