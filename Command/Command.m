//
//  Command.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "Command.h"
#import "CommandManager.h"

@implementation Command

- (void)execute {
    // override in subclass;
    
    [self done];
}

- (void)cancel {
    self.completion = nil;
}

- (void)done {
    dispatch_async(dispatch_get_main_queue(), ^{
        if (self.completion) {
            self.completion(self);
        }
        self.completion = nil;
        [[CommandManager sharedInstance].commandsArray removeObject:self];
    });
}


@end
