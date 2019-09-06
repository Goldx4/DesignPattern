//
//  CommandManager.h
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

@interface CommandManager : NSObject

// 命令管理容器
@property (nonatomic, strong) NSMutableArray<Command *> *commandsArray;

// 命令管理者以单例方式呈现
+ (instancetype)sharedInstance;

// 执行命令
+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)completion;
// 取消命令
+ (void)cancelCommand:(Command *)cmd;

@end
