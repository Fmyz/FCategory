//
//  MBProgressHUD+TSToast.h
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (TSToast)

///toast会加载在AppDelegate.window上面
+ (void)showToast:(NSString *)toast;

+ (void)showToast:(NSString *)toast inView:(UIView *)view;

+ (void)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode;

+ (void)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode afterDelay:(NSTimeInterval)delay;

@end
