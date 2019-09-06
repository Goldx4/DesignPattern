//
//  BusinessObject.h
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BusinessObject;
typedef void(^CompletionBlock)(BOOL handled);
typedef void(^ResultBlock)(BusinessObject *handler, BOOL handled);

@interface BusinessObject : NSObject

// 下一个响应者（响应者链构成的关键）
@property (nonatomic, strong) BusinessObject *nextBusiness;
// 响应者的处理方法 响应链的入口
- (void)handle:(ResultBlock)result;

// 各个业务在该方法当中做实际业务处理
- (void)handleBusiness:(CompletionBlock)completion;

@end

