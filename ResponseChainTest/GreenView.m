//
//  GreenView.m
//  ResponseChainTest
//
//  Created by YaoYaoX on 17/3/31.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "GreenView.h"

@implementation GreenView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
    }
    return self;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"green View");
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    UIView *view = [super hitTest:point withEvent:event];
    NSLog(@"green: %@, return: %p",self, view);
    return view;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    BOOL inside = [super pointInside:point withEvent:event];
    if(!inside){
        // 判断触摸点是否在subviews中,在则响应事件
        for (UIView *view in self.subviews) {
            if (CGRectContainsPoint(view.frame, point)) {
                inside = YES;
                break;
            }
        }
    }
    
    return inside;
}

@end
