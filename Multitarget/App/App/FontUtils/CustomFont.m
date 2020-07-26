//
//  CustomFont.m
//  FOntTest
//
//  Created by devmac02 on 7/23/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import "CustomFont.h"

@implementation CustomFont

+(UIFont *)regularFontWithSize:(CGFloat)size
{
  return [UIFont fontWithName:[[FontFactory sharedInstance].DefaultFont getRegular]  size:size];
}

+(UIFont *)boldFontWithSize:(CGFloat)size
{
  return [UIFont fontWithName:[[FontFactory sharedInstance].DefaultFont getbold]  size:size];
}

+(UIFont *)italicFontWithSize:(CGFloat)size
{
  return [UIFont fontWithName:[[FontFactory sharedInstance].DefaultFont getitalic]  size:size];
}



@end
