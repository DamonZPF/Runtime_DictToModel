//
//  BaseModel.h
//  Runtime_DictToModel
//
//  Created by ZHOUPENGFEI on 16/4/15.
//  Copyright © 2016年 ZPF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject

+(instancetype)objcWithDict:(NSDictionary*)dict mapDict:(NSDictionary*)mapDict;

@end
