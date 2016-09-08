//
//  UIView+TSBlurView.m
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "UIView+TSBlurView.h"

@implementation UIView (TSBlurView)

- (UIVisualEffectView *)blurView
{
    return [self addBlurViewWithStyle:UIBlurEffectStyleLight];
}

- (UIVisualEffectView *)addBlurViewWithStyle:(UIBlurEffectStyle)style
{
    UIBlurEffect *blur = [UIBlurEffect effectWithStyle:style];
    
    UIVisualEffectView *effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
    effectview.frame = self.bounds;
    return effectview;
}

@end
