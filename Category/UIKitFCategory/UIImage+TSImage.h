//
//  UIImage+TSImage.h
//  YueZhai
//
//  Created by Fmyz on 16/8/9.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TSImage)

+ (UIImage *)fixOrientation:(UIImage *)inImage;

- (NSData *)JPEGData;;

@end
