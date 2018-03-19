//
//  ViewController.m
//  01-runtime消息机制
//
//  Created by apple on 2018/3/12.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>
//任何方法调用本质：发送一个消息，用runtime发送消息，OC底层实现通过runtime实现
//验证：方法调用，是否真的转换为消息机制

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    id objc = [NSObject alloc];
//    objc = [objc init];
    
    //最终生成消息机制，编译器做的事情
    //最终代码，需要把当前代码重新编译，用Xcode编译，clang
    //clang -rewrite-objc main.m 查看最终生成代码

    id objc = ((NSObject *(*)(id,SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"),sel_registerName("alloc"));
    objc = ((id (*)(id, SEL))(void *)objc_msgSend)((id)objc,sel_registerName("init"));
    //xcode6之前，苹果允许使用objc——msgSend，而且有参数提示
    //xcode6之后，就不推荐使用了，需要找到Xcode building setting 搜索msg 改为NO
    objc_msgSend([NSObject class], @selector(alloc));
    objc_msgSend(objc, @selector(init));
    
//    Person * p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
//    p = objc_msgSend(p, sel_registerName("init"));
//    [p eat];
//    objc_msgSend(p, @selector(eat));
//    objc_msgSend(p, @selector(run:),100);
//
    
    //方法调用流程
    //怎样去调用eat方法  对象方法：保存在类对象的方法列表中。  类方法：保存在元类方法列表中
    //1.eat 是对象方法 应该去找对应的 类对象，通过isa指针去对应的类中寻找
    //2.注册方法编号。
    //3.根据方法编号去查找对应方法。
    //4.找到的只是最终函数实现地址，根据地址去方法区调用对应函数。
    
    
    
    
    /**
     *  什么时候用到runtime消息机制
     *  1:可以帮我们掉一些私有的方法，没有暴漏的方法可以去掉；类比就是可以调一些系统没公开的方法
     
     *
     
     */
    
    
    //访问类和对象的实例变量
//    u_int count = 0;
//    Ivar * ivars = class_copyIvarList([Person class], &count);
//    for (int i = 0; i<count; i++) {
//        const char * ivarName = ivar_getName(ivars[i]);
//        NSString * str =[NSString stringWithCString:ivarName encoding:NSUTF8StringEncoding];
//        NSLog(@"ivarName : %@", str);
//    }
    
    //访问类和对象的属性
//    u_int count = 0;
//    objc_property_t *properties = class_copyPropertyList([Person class], &count);
//    for (int i = 0; i < count; i++) {
//        const char *propertyName = property_getName(properties[i]);
//        NSString *str = [NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding];
//        NSLog(@"propertyName : %@", str);
//    }
//    free(properties);
    
    //访问类和对象的方法
//    u_int count = 0;
//    Method * methods = class_copyMethodList([Person class], &count);
//    for (int i = 0; i < count; i++) {
//        Method method = methods[i];
//        SEL methodName = method_getName(method);
//        NSString * str = [NSString stringWithCString:sel_getName(methodName) encoding:NSUTF8StringEncoding];
//        int arguments = method_getNumberOfArguments(method);
//        NSLog(@"methodName : %@, arguments Count: %d", str, arguments);
//    }
//    
//    free(methods);
    

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}



@end
