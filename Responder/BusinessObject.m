//
//  BusinessObject.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "BusinessObject.h"

@implementation BusinessObject

// 责任链入口方法
- (void)handle:(ResultBlock)result {

    CompletionBlock completion = ^(BOOL handled){
        // 当前业务处理完毕，上抛结果
        if (handled) {
            result(self, handled);
        }
        else {
            // 沿着责任链，指派给下一个业务处理
            if (self.nextBusiness) {
                [self.nextBusiness handle:result];
            }
            else {
                // 没有业务处理，上抛
                result(nil, NO);
            }
        }
    };
    // 当前业务进行处理
    [self handleBusiness:completion];
}

- (void)handleBusiness:(CompletionBlock)completion {
    /*
     业务逻辑的处理
     如网络请求等
     */
}

@end
