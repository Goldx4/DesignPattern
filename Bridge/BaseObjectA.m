//
//  BaseObjectA.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "BaseObjectA.h"

@implementation BaseObjectA


/*
  根据实际业务逻辑判断使用哪套具体数据
  A1 --> B1、B2、B3   3种
  A2 --> B1、B2、B3   3种
  A3 --> B1、B2、B3   3种
 */
- (void)handle {
    // override to subclass
    
    [self.objB fetchData];
}

@end
