//
//  ViewController.m
//  Runtime_DictToModel
//
//  Created by ZHOUPENGFEI on 16/4/15.
//  Copyright © 2016年 ZPF. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dcit = @{@"userName":@"zhoupengfei",@"age":@15,@"id":@"999"};
   
    Person * p = [Person objcWithDict:dcit mapDict:@{@"ID":@"id"}];
    
    NSLog(@"%@",p);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
