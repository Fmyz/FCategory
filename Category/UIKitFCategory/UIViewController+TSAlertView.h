//
//  UIViewController+TSAlertView.h
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AlertAction) {
    AlertActionDefault = 0,
    AlertActionCancel,
    AlertActionDestructive,
};

typedef void (^ActionComplete)(AlertAction action, NSString *actionTitle);

@interface UIViewController (TSAlertView)

//self presentViewController
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete NS_AVAILABLE_IOS(8_0);

//self presentViewController
- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete NS_AVAILABLE_IOS(8_0);

@end

@interface TSAlertView : UIView

//app.window.rootcontrolelr presentViewController
+ (void)showAlertWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete NS_AVAILABLE_IOS(8_0);

//app.window.rootcontrolelr presentViewController
+ (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message cancelActionTitle:(NSString *)cancelActionTitle defaultActionTitles:(NSArray *)defaultActionTitles destructiveActionTitles:(NSArray *)destructiveActionTitles actionComplete:(ActionComplete)actionComplete NS_AVAILABLE_IOS(8_0);

@end
