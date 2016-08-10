//
//  ViewController.m
//  goldenDust
//
//  Created by mac-mini2 on 16/8/6.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "ViewController.h"
#import "KeywindowViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
}
- (IBAction)clickKeywindow:(id)sender {

    KeywindowViewController *keywindow = [[KeywindowViewController alloc]init];
    [self.navigationController pushViewController:keywindow animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
