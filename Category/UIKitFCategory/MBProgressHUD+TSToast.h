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
+ (MBProgressHUD *)showToast:(NSString *)toast;

+ (MBProgressHUD *)showToast:(NSString *)toast inView:(UIView *)view;

+ (MBProgressHUD *)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode;

+ (MBProgressHUD *)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode afterDelay:(NSTimeInterval)delay;

@end
