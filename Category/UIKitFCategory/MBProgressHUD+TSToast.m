//
//  MBProgressHUD+TSToast.m
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "MBProgressHUD+TSToast.h"
#import "AppDelegate.h"

@implementation MBProgressHUD (TSToast)

///toast会加载在AppDelegate.window上面
+ (void)showToast:(NSString *)toast
{
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [MBProgressHUD showToast:toast inView:delegate.window mode:MBProgressHUDModeText afterDelay:1.f];
}

+ (void)showToast:(NSString *)toast inView:(UIView *)view
{
    [MBProgressHUD showToast:toast inView:view mode:MBProgressHUDModeText afterDelay:1.f];
}

+ (void)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode
{
    [MBProgressHUD showToast:toast inView:view mode:mode afterDelay:1.f];
}

+ (void)showToast:(NSString *)toast inView:(UIView *)view mode:(MBProgressHUDMode)mode afterDelay:(NSTimeInterval)delay
{
    if (!view) {
        return;
    }
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = toast;
    hud.mode = mode;
    [hud removeFromSuperViewOnHide];
    [hud hide:YES afterDelay:delay];
}

@end
