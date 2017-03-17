//
//  ViewController.m
//  Array
//
//  Created by 韩志峰 on 2017/3/16.
//  Copyright © 2017年 韩志峰. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *first = [[Person alloc] init];
    first.name = @"韩志峰";
    first.sex = @"man";
    first.numberID = @"1";
    
    Person *second = [[Person alloc] init];
    second.name = @"zhanglihua";
    second.sex = @"female";
    second.numberID = @"2";
    
    Person *three = [[Person alloc] init];
    three.name = @"lilimin";
    three.sex = @"female";
    three.numberID = @"3";
    
    NSArray *testArray = @[first,second,three];
    NSMutableArray *muableA = [testArray mutableCopy];
    for (Person *item in testArray) {
        if ([item.numberID isEqualToString:@"3"]) {
            [muableA removeObject:item];
        }
    }
    NSLog(@"%@",muableA);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
