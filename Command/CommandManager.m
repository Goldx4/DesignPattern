//
//  CommandManager.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "CommandManager.h"

@interface CommandManager ()<NSCopying, NSMutableCopying>

@end

@implementation CommandManager

+ (instancetype)sharedInstance {
    static CommandManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return self;
}

+ (void)executeCommand:(Command *)cmd completion:(CommandCompletionCallBack)completion {
    if (cmd) {
        // 如果当前命令正在执行则不做处理，否则添加并执行命令
        if (![self _isExecutingCommand:cmd]) {
            // 添加到命令容器中
            [[[self sharedInstance] commandsArray] addObject:cmd];
            // 设置命令完成的回调
            cmd.completion = completion;
            // 执行命令
            [cmd execute];
        }
    }
}

+ (void)cancelCommand:(Command *)cmd {
    if (cmd) {
        NSMutableArray *cmds = [[self sharedInstance] commandsArray];
        if ([cmds containsObject:cmd]) {
            [cmds removeObject:cmd];
            [cmd cancel];
        }
    }
}

+ (BOOL)_isExecutingCommand:(Command *)cmd {
    if (cmd) {
        NSArray *cmds = [[self sharedInstance] commandsArray];
        for (Command *aCmd in cmds) {
            if (aCmd == cmd) {
                return YES;
            }
        }
    }
    return NO;
}

@end
