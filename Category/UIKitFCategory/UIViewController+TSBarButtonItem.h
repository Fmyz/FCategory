//
//  UIViewController+TSBarButtonItem.h
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

#define BackBar_Icon @"navbar_back_icon"

@interface UIViewController (TSBarButtonItem)

- (void)addBackBarButtonItemWithTitle:(NSString *)title;
- (void)addBackBarButtonItem;
- (void)addBackBarButtonItemWithImage:(UIImage *)image;
- (void)backBarButtonItemClick; //可重写该方法

- (void)addLeftBarButtonItemWithTitle:(NSString *)title;
- (void)addLeftBarButtonItemWithImage:(UIImage *)image;
- (void)leftBarButtonItemClick;

- (void)addRightBarButtonItemWithTitle:(NSString *)title;
- (void)addRightBarButtonItemWithImage:(UIImage *)image;
- (void)rightBarButtonItemClick;


@end
