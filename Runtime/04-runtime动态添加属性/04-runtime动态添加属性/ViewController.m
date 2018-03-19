//
//  ViewController.m
//  04-runtime动态添加属性
//
//  Created by apple on 2018/3/14.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+Property.h"
//动态添加属性：什么时候需要动态添加属性
//本质：动态添加属性本质就是让某个属性与对象产生关联
//需求：让一个NSObject 保存一个字符串属性

//runtime一般都是针对系统的类操作
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSObject * objc =[[NSObject alloc]init];
    objc.name = @"wang";
    NSString * str = [NSString stringWithString:@"123"];
    Person * p = [[Person alloc]init];
    p.name = str;
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
