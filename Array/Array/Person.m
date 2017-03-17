//
//  Person.m
//  Array
//
//  Created by 韩志峰 on 2017/3/16.
//  Copyright © 2017年 韩志峰. All rights reserved.
//

#import "Person.h"

@implementation Person
- (NSUInteger)hash{
    return self.sex.hash;
}
- (BOOL)isEqual:(id)object{
    
    if (object == self) { // ==运算符判断是否是同一个对像
        return YES;
    }
    
    
    if ([object isKindOfClass:[Person class]]) {
        Person *person = (Person *)object;
        return [self.sex isEqualToString:person.sex];
    }
    return NO;
}
@end
