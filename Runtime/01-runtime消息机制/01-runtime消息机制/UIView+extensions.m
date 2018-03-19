//
//  UIView+extensions.m
//  01-runtime消息机制
//
//  Created by apple on 2018/3/13.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "UIView+extensions.h"
#import <objc/runtime.h>
#import "UIView+extensions.h"
@implementation UIView (extensions)
+(void)load{
    Method origin = class_getInstanceMethod([UIView class], @selector(touchesBegan:withEvent:));
    Method custom = class_getInstanceMethod([UIView class], @selector(customtouchesBegan:withEvent:));
    method_exchangeImplementations(origin, custom);
}

-(void)customtouchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"点击了");
}
@end
