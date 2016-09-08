//
//  NSString+TSString.h
//  YueZhai
//
//  Created by Fmyz on 16/8/9.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TSString)

//md5 32位 加密
+ (NSString *)md5HexDigest:(NSString*)input;

@end
