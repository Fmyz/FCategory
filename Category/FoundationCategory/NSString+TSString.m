//
//  NSString+TSString.m
//  YueZhai
//
//  Created by Fmyz on 16/8/9.
//  Copyright © 2016年 Fmyz. All rights reserved.
//

#import "NSString+TSString.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (TSString)

//md5 32位 加密
+ (NSString *)md5HexDigest:(NSString*)input
{
    const char* str = [input UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str,(CC_LONG) strlen(str), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [ret appendFormat:@"%02X",result[i]];
    }
    return ret;
}

@end
