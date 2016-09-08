//
//  UIImageView+TSWebCache.m
//  YueZhai
//
//  Created by Fmyz on 16/8/11.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "UIImageView+TSWebCache.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (TSWebCache)

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder
{
    [self ts_setImageWithURL:url placeholderImage:placeholder options:TSWebImageRetryFailed progress:nil completed:nil];
}

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder progress:(TSWebImageDownloaderProgressBlock)progressBlock completed:(TSWebImageCompletionBlock)completedBlock
{
    [self ts_setImageWithURL:url placeholderImage:placeholder options:TSWebImageRetryFailed progress:progressBlock completed:completedBlock];
}

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(TSWebImageOptions)options progress:(TSWebImageDownloaderProgressBlock)progressBlock completed:(TSWebImageCompletionBlock)completedBlock
{
    [self sd_setImageWithURL:url placeholderImage:placeholder options:(SDWebImageOptions)options progress:progressBlock completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (completedBlock) {
            completedBlock(image, error, (TSImageCacheType)cacheType, imageURL);
        }
    }];
}

@end
