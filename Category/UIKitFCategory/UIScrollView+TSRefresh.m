//
//  UIScrollView+TSRefresh.m
//  YueZhai
//
//  Created by Fmyz on 16/8/12.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "UIScrollView+TSRefresh.h"
#import "MJRefresh.h"
//封装一层  以后好换
@implementation UIScrollView (TSRefresh)

- (void)addHeaderRefreshWithBlock:(void(^)())refreshingBlock
{
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        if (refreshingBlock) {
            refreshingBlock();
        }
    }];
}

- (void)addHeaderRefreshWithTarget:(id)target action:(SEL)action
{
    self.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:target refreshingAction:action];
}

- (void)beginHeaderRefreshing
{
    if (!self.mj_header.isRefreshing) {
        [self.mj_header beginRefreshing];
    }
}
- (void)endHeaderRefreshing
{
    if (self.mj_header.isRefreshing) {
        [self.mj_header endRefreshing];
    }
}
- (BOOL)isHeaderRefreshing
{
    return self.mj_header.isRefreshing;
}

- (void)addFooterRefreshWithBlock:(void(^)())refreshingBlock
{
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
        //Call this Block When enter the refresh status automatically
        if (refreshingBlock) {
            refreshingBlock();
        }
    }];
}

- (void)addFooterRefreshWithTarget:(id)target action:(SEL)action
{
    self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:target refreshingAction:action];
}

- (void)beginFooterRefreshing
{
    if (!self.mj_footer.isRefreshing) {
        [self.mj_footer beginRefreshing];
    }
}
- (void)endFooterRefreshing
{
    if (self.mj_footer.isRefreshing) {
        [self.mj_footer endRefreshing];
    }
}
- (BOOL)isFooterRefreshing
{
    return self.mj_footer.isRefreshing;
}

// Set the callback（Once you enter the refresh status，then call the action of target，that is call [self loadMoreData]）


@end
