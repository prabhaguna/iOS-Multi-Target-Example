//
//  CustomFont.h
//  FOntTest
//
//  Created by devmac02 on 7/23/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppFontNames.h"
#import "FontFactory.h"

@interface CustomFont : NSObject

+(UIFont *)regularFontWithSize:(CGFloat)size;
+(UIFont *)boldFontWithSize:(CGFloat)size;
+(UIFont *)italicFontWithSize:(CGFloat)size;

@end

