//
//  NSString+intTo16.m
//  slider_RGB
//
//  Created by Keje on 2016/11/30.
//  Copyright © 2016年 Keje. All rights reserved.
//

#import "NSString+intTo16.h"

@implementation NSString (intTo16)

+(NSString *)stringWithDecimal:(NSInteger)x{
    return [NSString stringWithFormat:@"%@",[[NSString alloc] initWithFormat:@"%1lx",(long)x]];
}
@end
