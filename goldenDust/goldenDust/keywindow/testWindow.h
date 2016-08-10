//
//  testWindow.h
//  keywindow
//
//  Created by mac-mini2 on 16/8/10.
//  Copyright © 2016年 jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface testWindow : UIWindow

+ (testWindow *)shareInstance;

- (void)show;
- (void)dismiss;

@end
