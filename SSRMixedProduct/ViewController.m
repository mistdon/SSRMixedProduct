//
//  ViewController.m
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

#import "ViewController.h"

#import "SSRMixedProduct-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 100, 50);
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)tapAction:(id)sender{
    PersonalViewController *vc = [[PersonalViewController alloc] init];
    [self.navigationController showViewController:vc sender:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    Hello *hi = [Hello new];
    NSLog(@"%@", hi.helloString);
    [hi sayHello:@"sd"];
}
@end
