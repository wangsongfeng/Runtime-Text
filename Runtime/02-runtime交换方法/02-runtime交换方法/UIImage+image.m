//
//  UIImage+image.m
//  02-runtime交换方法
//
//  Created by apple on 2018/3/13.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "UIImage+image.h"
#import <objc/message.h>
@implementation UIImage (image)

+(void)load{
    Method  imagename = class_getClassMethod(self, @selector(imageNamed:));
    Method  ffimagename = class_getClassMethod(self, @selector(feImageNamed:));
    method_exchangeImplementations(imagename, ffimagename);
}


+(UIImage*)feImageNamed:(NSString *)name{
    UIImage * img = [UIImage feImageNamed:name];
    if (img) {
        NSLog(@"加载成功");
    }else{
        NSLog(@"加载失败");
    }
    return img;
}
@end
