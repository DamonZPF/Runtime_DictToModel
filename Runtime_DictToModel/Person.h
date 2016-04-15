//
//  Person.h
//  Runtime_DictToModel
//
//  Created by ZHOUPENGFEI on 16/4/15.
//  Copyright © 2016年 ZPF. All rights reserved.
//

#import "BaseModel.h"

@interface Person : BaseModel
@property(nonatomic,copy)NSString * userName;
@property(nonatomic,copy)NSString * age;
@property(nonatomic,copy)NSString * ID;
@end
