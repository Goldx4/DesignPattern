//
//  ViewController.m
//  DesignPattern
//
//  Created by Goldx4 on 2019/9/5.
//  Copyright © 2019 Goldx4. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *_textLabel;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 60, 30)];
    _textLabel.textColor = UIColor.redColor;
    _textLabel.text = NSLocalizedString(@"click", "");
    [self.view addSubview:_textLabel];
}

@end
