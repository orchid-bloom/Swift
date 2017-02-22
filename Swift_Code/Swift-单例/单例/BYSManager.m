//
//  BYSManager.m
//  单例
//
//  Created by tianXin on 2017/2/22.
//  Copyright © 2017年 tianXin. All rights reserved.
//

#import "BYSManager.h"

@implementation BYSManager
+ (BYSManager *)shareObjc {
    return [[self alloc] init];
}
@end
