//
//  ObjcViewController.m
//  SSRMixedProduct
//
//  Created by Don.shen on 2019/6/3.
//  Copyright © 2019 shendong. All rights reserved.
//

#import "ObjcViewController.h"
#import "DateManager.h"

@interface ObjcViewController ()

@end

@implementation ObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    DateManager.shared.testVoidBlock = ^{
        NSLog(@"testVoidBlock");
    };
    
    if (DateManager.shared.testVoidBlock) {
        DateManager.shared.testVoidBlock();
    }
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    __weak typeof(self)weakself = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if (weakself.delegate) {
            [weakself.delegate objcViewController:@"sss"];
        }
    });
}
@end
