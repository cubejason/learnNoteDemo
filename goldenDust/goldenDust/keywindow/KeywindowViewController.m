//
//  KeywindowViewController.m
//  goldenDust
//
//  Created by mac-mini2 on 16/8/10.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "KeywindowViewController.h"
#import "testWindow.h"

@interface KeywindowViewController ()

@end

@implementation KeywindowViewController

#define WIDE [[UIScreen mainScreen] bounds].size.width
#define HEIGHT [[UIScreen mainScreen] bounds].size.height

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)clickRed:(id)sender {

    UIButton *view = [[UIButton alloc]init];
    view.frame = CGRectMake((WIDE-200)/2, 200, 200, 200);
    view.backgroundColor = [UIColor redColor];
    [view addTarget:self action:@selector(windowDismiss) forControlEvents:UIControlEventTouchUpInside];
    [[testWindow shareInstance] addSubview:view];
    [[testWindow shareInstance] show];
}

- (IBAction)clickYellow:(id)sender {

    UIButton *view = [[UIButton alloc]init];
    view.frame = CGRectMake((WIDE-200)/2, 200, 200, 200);
    view.backgroundColor = [UIColor yellowColor];
    [view addTarget:self action:@selector(windowDismiss) forControlEvents:UIControlEventTouchUpInside];
    [[testWindow shareInstance] addSubview:view];
    [[testWindow shareInstance] show];
}

- (void)windowDismiss{

    [[testWindow shareInstance] dismiss];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
