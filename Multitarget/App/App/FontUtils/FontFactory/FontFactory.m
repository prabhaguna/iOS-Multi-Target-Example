//
//  FontFactory.m
//  FOntTest
//
//  Created by devmac02 on 7/22/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import "FontFactory.h"

@implementation FontFactory

+ (FontFactory*)sharedInstance {
    static FontFactory *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    if (self = [super init]) {
        self.DefaultFont = [self getDefaultFontForTarget];
    }
    return self;
}

-(id)getDefaultFontForTarget
{
    if(TARGET_A)
    {
        return [[TargetAFontNames alloc] init];
    }
    else if (TARGET_B)
    {
        return [[TargetBFontNames alloc] init];
    }
}

@end
