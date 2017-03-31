//
//  ViewController.m
//  ResponseChainTest
//
//  Created by YaoYaoX on 17/3/31.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "ViewController.h"
#import "LightGrayView.h"
#import "GreenView.h"
#import "RedView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LightGrayView *lightV = [[LightGrayView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:lightV];
    
    GreenView *greenV = [[GreenView alloc] initWithFrame:CGRectMake(10, 25, 70, 30)];
    [lightV addSubview:greenV];
    
    GreenView *greenV2 = [[GreenView alloc] initWithFrame:CGRectMake(90, 25, 70, 30)];
    [lightV addSubview:greenV2];
    
    GreenView *greenV3= [[GreenView alloc] initWithFrame:CGRectMake(170, 25, 70, 30)];
    [lightV addSubview:greenV3];
    
    GreenView *greenV4 = [[GreenView alloc] initWithFrame:CGRectMake(250, 25, 70, 30)];
    [lightV addSubview:greenV4];
    
    GreenView *greenV5 = [[GreenView alloc] initWithFrame:CGRectMake(330, 25, 70, 30)];
    [lightV addSubview:greenV5];
    
    GreenView *greenV6 = [[GreenView alloc] initWithFrame:CGRectMake(10, 700, 70, 30)];
    [lightV addSubview:greenV6];
    
    GreenView *greenV7 = [[GreenView alloc] initWithFrame:CGRectMake(90, 700, 70, 30)];
    [lightV addSubview:greenV7];
    
    GreenView *greenV8 = [[GreenView alloc] initWithFrame:CGRectMake(170, 700, 70, 30)];
    [lightV addSubview:greenV8];
    
    GreenView *greenV9 = [[GreenView alloc] initWithFrame:CGRectMake(250, 700, 70, 30)];
    [lightV addSubview:greenV9];
    
    GreenView *greenV10 = [[GreenView alloc] initWithFrame:CGRectMake(330, 700, 70, 30)];
    [lightV addSubview:greenV10];
    
    RedView *redV = [[RedView alloc] initWithFrame:CGRectMake(10, -20, 30, 30)];
    [greenV10 addSubview:redV];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"main view");
}

@end

