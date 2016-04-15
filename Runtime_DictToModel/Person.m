//
//  Person.m
//  Runtime_DictToModel
//
//  Created by ZHOUPENGFEI on 16/4/15.
//  Copyright © 2016年 ZPF. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString*)description{
    
    return [NSString stringWithFormat:@"username = %@ - , age = %@ -, id = %@-",self.userName,self.age,self.ID];
}

@end
