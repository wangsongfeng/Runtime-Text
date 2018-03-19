//
//  NSObject+Property.m
//  04-runtime动态添加属性
//
//  Created by apple on 2018/3/14.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/message.h>
@implementation NSObject (Property)


-(void)setName:(NSString *)name{
    //让这个字符串与当前对象产生联系
    
    //object:给那个对象添加属性
    //key：属性名称
    //value：属性值
    //polity：保存策略
    objc_setAssociatedObject(self, @"name", name, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
}
-(NSString*)name{
    return objc_getAssociatedObject(self, @"name");
}
@end
