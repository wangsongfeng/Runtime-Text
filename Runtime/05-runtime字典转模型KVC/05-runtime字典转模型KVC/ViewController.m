//
//  ViewController.m
//  05-runtime字典转模型KVC
//
//  Created by apple on 2018/3/14.
//  Copyright © 2018年 yangchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString * filePath = [[NSBundle mainBundle]pathForResource:@"ImageName.plist" ofType:nil];
    NSDictionary * dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    

}



@end
