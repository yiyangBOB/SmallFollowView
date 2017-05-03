//
//  ViewController.m
//  ZYFlowView
//
//  Created by GaoZhiyuan on 2017/5/3.
//  Copyright © 2017年 GaoZhiyuan. All rights reserved.
//

#import "ViewController.h"
#import "ZYFlowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *labelArray = @[@"农业银行",@"中国人民银行",@"工商银行",@"中国建生银行",@"感冒病毒发烧",@"咳嗽",@"爱品商城",@"娱乐大咖尼古拉斯",@"iOS行业现状",@"女神和小张的故事",@"地铁分析",@"张柏芝",@"社会主义精神"];
    ZYFlowView *flowView = [[ZYFlowView alloc] initWithFrame:CGRectMake(0, 100, 375, 300) array:labelArray];
    [self.view addSubview:flowView];
}

@end
