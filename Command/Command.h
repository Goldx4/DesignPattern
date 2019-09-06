//
//  Command.h
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;
typedef void(^CommandCompletionCallBack)(Command *cmd);

@interface Command : NSObject

@property (nonatomic, copy) CommandCompletionCallBack completion;

- (void)execute;

- (void)cancel;

- (void)done;

@end

