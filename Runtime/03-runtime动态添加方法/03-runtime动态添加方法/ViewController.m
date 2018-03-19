//
//  ViewController.m
//  03-runtime动态添加方法
//
//  Created by apple on 2018/3/13.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person * p = [[Person alloc]init];
    [p performSelector:@selector(eat)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
