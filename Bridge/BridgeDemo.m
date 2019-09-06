//
//  BridgeDemo.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "BridgeDemo.h"

#import "BaseObjectA.h"
#import "BaseObjectB.h"

#import "ObjectA1.h"
#import "ObjectA2.h"

#import "ObjectB1.h"
#import "ObjectB2.h"

@interface BridgeDemo ()
@property (nonatomic, strong) BaseObjectA *objA;
@end

@implementation BridgeDemo

/*
 根据实际业务逻辑判断使用哪套具体数据
 A1 --> B1、B2、B3   3种
 A2 --> B1、B2、B3   3种
 A3 --> B1、B2、B3   3种
 */
- (void)fetch {
    // 创建一个具体的ClassA
    _objA = [[ObjectA1 alloc] init];
    
    // 创建一个具体的ClassB
    BaseObjectB *b1 = [[ObjectB1 alloc] init];
    // 将一个具体的ClassB1指定给抽象的ClassB
    _objA.objB = b1;
    
    // 获取数据
    [_objA handle];
}

@end
