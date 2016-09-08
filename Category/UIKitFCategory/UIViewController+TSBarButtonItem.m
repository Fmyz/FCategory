//
//  UIViewController+TSBarButtonItem.m
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "UIViewController+TSBarButtonItem.h"

@implementation UIViewController (TSBarButtonItem)

- (void)addBackBarButtonItemWithTitle:(NSString *)title
{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(backBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = backItem;
}
- (void)addBackBarButtonItem
{
    UIImage *backIcon = [UIImage imageNamed:BackBar_Icon];
    if (!backIcon) {
        return;
    }
    [self addBackBarButtonItemWithImage:backIcon];
}
- (void)addBackBarButtonItemWithImage:(UIImage *)image
{
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(backBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = backItem;
}
- (void)backBarButtonItemClick
{
    if (self.navigationController.viewControllers.count > 1) {
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}


- (void)addLeftBarButtonItemWithTitle:(NSString *)title
{
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = leftItem;
}

- (void)addLeftBarButtonItemWithImage:(UIImage *)image
{
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = leftItem;
}
- (void)leftBarButtonItemClick{
    //子类可重写
}


- (void)addRightBarButtonItemWithTitle:(NSString *)title
{
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClick)];
    self.navigationItem.rightBarButtonItem = rightItem;
}
- (void)addRightBarButtonItemWithImage:(UIImage *)image
{
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonItemClick)];
    self.navigationItem.leftBarButtonItem = rightItem;
}
- (void)rightBarButtonItemClick{
    //子类可重写
}

@end
