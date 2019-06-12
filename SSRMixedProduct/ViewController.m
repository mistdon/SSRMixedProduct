//
//  ViewController.m
//  SSRMixedProduct
//
//  Created by shendong on 2019/5/27.
//  Copyright © 2019 shendong. All rights reserved.
//

#import "ViewController.h"
#import "SSRMixedProduct-Swift.h"
#import "AppObjcConstant.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"Swift中和OC类的混用" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 200, 50);
    btn.backgroundColor = UIColor.redColor;
    [btn addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    NSLog(@"%@",AppModuleName);
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"Swift中使用MJRefresh" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(100, 200, 200, 50);
    btn2.backgroundColor = UIColor.redColor;
    [btn2 addTarget:self action:@selector(tapAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    
    

}
- (void)tapAction:(id)sender{
    
//    TableViewController *vc = [[TableViewController alloc] init];
    DebugViewController *vc = [[DebugViewController alloc] init];
    [self.navigationController showViewController:vc sender:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    Hello *hi = [Hello new];
    NSLog(@"%@", hi.helloString);
    [hi sayHello:@"sd"];
}
@end
