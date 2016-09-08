//
//  UIView+TSBlurView.h
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (TSBlurView)

- (UIVisualEffectView *)blurView NS_AVAILABLE_IOS(8_0);

- (UIVisualEffectView *)addBlurViewWithStyle:(UIBlurEffectStyle)style NS_AVAILABLE_IOS(8_0);

@end
