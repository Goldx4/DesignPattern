//
//  CoolTarget.h
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "Target.h"

// 适配对象
@interface CoolTarget : NSObject

// 被适配对象
@property (nonatomic, strong) Target *target;

// 对原有方法的包装
- (void)request;

@end

