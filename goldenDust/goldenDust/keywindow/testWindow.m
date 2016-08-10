//
//  testWindow.m
//  keywindow
//
//  Created by mac-mini2 on 16/8/10.
//  Copyright © 2016年 jason. All rights reserved.
//

#import "testWindow.h"

@implementation testWindow

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - Singleton

+ (testWindow *)shareInstance {

    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initWithFrame:[UIScreen mainScreen].bounds];
    });
    return instance;
}

#pragma mark - Initilize
- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {

    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)decoder {
    
    if (self = [super initWithCoder:decoder]) {

    }
    return self;
}

- (void)show {

    [self makeKeyWindow];
    self.hidden = NO;
}

- (void)dismiss{

    [self resignKeyWindow];
    self.hidden = YES;
}

@end
