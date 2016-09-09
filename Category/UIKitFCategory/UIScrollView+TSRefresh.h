//
//  UIScrollView+TSRefresh.h
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

//封装一层  以后好换
@interface UIScrollView (TSRefresh)

#pragma mark- normal
//头部视图刷新
- (void)addHeaderRefreshWithBlock:(void(^)())refreshingBlock;
- (void)addHeaderRefreshWithTarget:(id)target action:(SEL)action;

- (void)beginHeaderRefreshing;
- (void)endHeaderRefreshing;

- (BOOL)isHeaderRefreshing;

//尾部视图刷新
- (void)addFooterRefreshWithBlock:(void(^)())refreshingBlock;
- (void)addFooterRefreshWithTarget:(id)target action:(SEL)action;

- (void)beginFooterRefreshing;
- (void)endFooterRefreshing;

- (BOOL)isFooterRefreshing;

@end
