//
//  BaseModel.m
//  Runtime_DictToModel
//
//  Created by ZHOUPENGFEI on 16/4/15.
//  Copyright © 2016年 ZPF. All rights reserved.
//

#import "BaseModel.h"
#import <objc/runtime.h>
@implementation BaseModel
+(instancetype)objcWithDict:(NSDictionary*)dict mapDict:(NSDictionary *)mapDict{
    id objc = [[self alloc] init];
    unsigned int count = 0;
    Ivar  *ivars = class_copyIvarList(self, &count);
    for (NSInteger index = 0; index < count; index++) {
        Ivar ivar = ivars[index];
        NSString * ivarName = @(ivar_getName(ivar));
        ivarName = [ivarName substringFromIndex:1];
       
        id  value = dict[ivarName];
        if (value == nil) {
            if (mapDict) {
                NSString * keyName = mapDict[ivarName];
                value = dict[keyName];
            }
        }
       
        if (value) {
               [objc  setValue:value forKeyPath:ivarName];
        }
     
    }
    
    return objc;
}
@end
