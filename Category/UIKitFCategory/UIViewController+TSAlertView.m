//
//  UIViewController+TSAlertView.m
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "UIViewController+TSAlertView.h"
#import "AppDelegate.h"

@implementation UIViewController (TSAlertView)

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    [self showAlertControllerWithStyle:UIAlertControllerStyleAlert title:title message:message cancelActionTitle:cancelActionTitle defaultActionTitles:defaultActionTitles destructiveActionTitles:destructiveActionTitles actionComplete:actionComplete];
}

- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    [self showAlertControllerWithStyle:UIAlertControllerStyleActionSheet title:title message:message cancelActionTitle:cancelActionTitle defaultActionTitles:defaultActionTitles destructiveActionTitles:destructiveActionTitles actionComplete:actionComplete];
}

- (void)showAlertControllerWithStyle:(UIAlertControllerStyle)style title:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    
    for (NSString *defaultActionTitle in defaultActionTitles) {
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:defaultActionTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionDefault, action.title);
            }
        }];
        [alertC addAction:defaultAction];
    }
    
    if (cancelActionTitle && cancelActionTitle.length) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionCancel, action.title);
            }
        }];
        [alertC addAction:cancelAction];
    }
    
    for (NSString *destructiveActionTitle in destructiveActionTitles) {
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveActionTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionDestructive, action.title);
            }
        }];
        [alertC addAction:destructiveAction];
    }
    
    [self presentViewController:alertC animated:YES completion:nil];
}

@end

@implementation TSAlertView

+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    [self showAlertControllerWithStyle:UIAlertControllerStyleAlert title:title message:message cancelActionTitle:cancelActionTitle defaultActionTitles:defaultActionTitles destructiveActionTitles:destructiveActionTitles actionComplete:actionComplete];
}

+ (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    [self showAlertControllerWithStyle:UIAlertControllerStyleActionSheet title:title message:message cancelActionTitle:cancelActionTitle defaultActionTitles:defaultActionTitles destructiveActionTitles:destructiveActionTitles actionComplete:actionComplete];
}

+ (void)showAlertControllerWithStyle:(UIAlertControllerStyle)style title:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete
{
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    
    for (NSString *defaultActionTitle in defaultActionTitles) {
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:defaultActionTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionDefault, action.title);
            }
        }];
        [alertC addAction:defaultAction];
    }
    
    if (cancelActionTitle && cancelActionTitle.length) {
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelActionTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionCancel, action.title);
            }
        }];
        [alertC addAction:cancelAction];
    }
    
    for (NSString *destructiveActionTitle in destructiveActionTitles) {
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveActionTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            if (actionComplete) {
                actionComplete(AlertActionDestructive, action.title);
            }
        }];
        [alertC addAction:destructiveAction];
    }
    
    AppDelegate *delgate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    id rootVC = delgate.window.rootViewController;
    
    if ([rootVC isKindOfClass:[UINavigationController class]]) {
        if (((UINavigationController *)rootVC).topViewController) {
            [((UINavigationController *)rootVC).topViewController presentViewController:alertC animated:YES completion:nil];
        }else{
            [delgate.window.rootViewController presentViewController:alertC animated:YES completion:nil];
        }
    }else{
        [delgate.window.rootViewController presentViewController:alertC animated:YES completion:nil];
    }
}

@end
