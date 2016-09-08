//
//  UIImageView+TSWebCache.h
//  YueZhai
//
//  Created by Fmyz on 16/8/11.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, TSImageCacheType) {
    TSImageCacheTypeNone,
    TSImageCacheTypeDisk,
    TSImageCacheTypeMemory
};

typedef NS_OPTIONS(NSUInteger, TSWebImageOptions) {

    TSWebImageRetryFailed = 1 << 0,

    TSWebImageLowPriority = 1 << 1,
    
    TSWebImageCacheMemoryOnly = 1 << 2,

    TSWebImageProgressiveDownload = 1 << 3,

    TSWebImageRefreshCached = 1 << 4,

    TSWebImageAvoidAutoSetImage = 1 << 11
};

typedef void(^TSWebImageDownloaderProgressBlock)(NSInteger receivedSize, NSInteger expectedSize);
typedef void(^TSWebImageCompletionBlock)(UIImage *image, NSError *error, TSImageCacheType cacheType, NSURL *imageURL);

//封装一层 以后修改方便
@interface UIImageView (TSWebCache)

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder;

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder progress:(TSWebImageDownloaderProgressBlock)progressBlock completed:(TSWebImageCompletionBlock)completedBlock;

- (void)ts_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(TSWebImageOptions)options progress:(TSWebImageDownloaderProgressBlock)progressBlock completed:(TSWebImageCompletionBlock)completedBlock;

@end
