//
//  AppButton.m
//  FOntTest
//
//  Created by devmac02 on 7/23/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import "AppButton.h"

@implementation AppButton

-(void)awakeFromNib{
    
    [super awakeFromNib];
    self.titleLabel.font = [UIFont customFontWithName:self.titleLabel.font.fontName size:self.titleLabel.font.pointSize];
    
}

@end
