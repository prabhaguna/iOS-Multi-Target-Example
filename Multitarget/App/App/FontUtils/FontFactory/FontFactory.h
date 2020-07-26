//
//  FontFactory.h
//  FOntTest
//
//  Created by devmac02 on 7/22/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "AppFontNames.h"
#import "TargetAFontNames.h"
#import "TargetBFontNames.h"
#import "AppFontNamesProtocol.h"


@interface FontFactory : NSObject

@property(nonatomic,retain) id DefaultFont;

+(FontFactory*)sharedInstance;

@end

