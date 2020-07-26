//
//  AppLabel.m
//  FOntTest
//
//  Created by devmac02 on 7/23/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import "AppLabel.h"

@implementation AppLabel

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.font = [UIFont customFontWithName:self.font.fontName size:self.font.pointSize];
}

@end
