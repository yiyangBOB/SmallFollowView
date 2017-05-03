//
//  ZYFlowView.m
//  ZYFlowView
//
//  Created by GaoZhiyuan on 2017/5/3.
//  Copyright © 2017年 GaoZhiyuan. All rights reserved.
//

#import "ZYFlowView.h"

#import "UIViewExt.h"
#import "UILabel+StringFrame.h"

#define kLabelMarginX 15
#define kLabelMarginY 10
#define kLabelHeight  20

@interface ZYFlowView ()

@property (nonatomic, strong) NSArray *stringArray;
@end

@implementation ZYFlowView

- (instancetype)initWithFrame:(CGRect)frame array:(NSArray *)array
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor yellowColor];
        _stringArray = array;
        [self setUpUI];
    }
    return self;
}

- (void)setUpUI
{
    CGFloat lastBtnLeft = kLabelMarginX;
    CGFloat lastBtnY = kLabelMarginY;
    for (NSInteger i = 0; i < _stringArray.count; ++i) {
        UILabel *label = [[UILabel alloc] init];
        label.text = _stringArray[i];
        label.backgroundColor = [UIColor clearColor];
        CGSize labelSize = [label boundingRectWithSize:CGSizeMake(1000, kLabelHeight)];
        if (lastBtnLeft + labelSize.width < self.width - kLabelMarginX) {
            label.frame = CGRectMake(lastBtnLeft, lastBtnY, labelSize.width, kLabelHeight);
        }
        else {
            label.frame = CGRectMake(kLabelMarginX,lastBtnY + kLabelHeight + kLabelMarginY, labelSize.width, 20);
            lastBtnY = lastBtnY + kLabelHeight + kLabelMarginY;
        }
        lastBtnLeft = label.right + kLabelMarginX;
        [self addSubview:label];
        
    }
    self.height = lastBtnY + kLabelHeight + kLabelMarginY;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
