//
//  LightGrayView.m
//  ResponseChainTest
//
//  Created by YaoYaoX on 17/3/31.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "LightGrayView.h"

@implementation LightGrayView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"yellow View");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *view = [super hitTest:point withEvent:event];
    NSLog(@"yellow: %@, return: %p",self, view);
    if (view == self) {
        // 不响应事件
        return nil;
    }
    return view;
}

@end
