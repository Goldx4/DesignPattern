//
//  BaseObjectA.h
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseObjectB.h"

@interface BaseObjectA : NSObject

// 桥接模式的核心实现
@property (nonatomic, strong) BaseObjectB *objB;

// 获取数据
- (void)handle;

@end
