//
//  UIFont+CustomFont.m
//  FOntTest
//
//  Created by devmac02 on 7/21/20.
//  Copyright © 2020 sempercon. All rights reserved.
//

#import "UIFont+AppFonts.h"
#import <objc/runtime.h>
#import "CustomFont.h"

@implementation UIFont (AppFonts)

+(UIFont *)regularFontWithSize:(CGFloat)size
{
  return [CustomFont regularFontWithSize:size];
}

+(UIFont *)boldFontWithSize:(CGFloat)size
{
  return [CustomFont boldFontWithSize:size];
}

+(UIFont *)customFontWithName:(NSString*)name size:(CGFloat)size
{
  if([[name lowercaseString] containsString:@"bold"])
  {
      return [CustomFont boldFontWithSize:size];
  }
  else if([[name lowercaseString] containsString:@"italic"])
  {
      return [CustomFont italicFontWithSize:size];
  }
  else
  {
      return [CustomFont regularFontWithSize:size];
  }

}


+(void)load
{

    /*SEL fontoriginal = @selector(fontWithName:size:);
    SEL fontoriginalmodified = @selector(customFontWithName:size:);

    SEL original = @selector(systemFontOfSize:);
    SEL modified = @selector(regularFontWithSize:);
    
    SEL originalBold = @selector(boldSystemFontOfSize:);
    SEL modifiedBold = @selector(boldFontWithSize:);

    Method originalMethod = class_getClassMethod(self, original);
    Method modifiedMethod = class_getClassMethod(self, modified);
    method_exchangeImplementations(originalMethod, modifiedMethod);

    Method originalBoldMethod = class_getClassMethod(self, originalBold);
    Method modifiedBoldMethod = class_getClassMethod(self, modifiedBold);
    method_exchangeImplementations(originalBoldMethod, modifiedBoldMethod);
    
    Method fontoriginalBoldMethod = class_getClassMethod(self, fontoriginal);
    Method fontmodifiedBoldMethod = class_getClassMethod(self, fontoriginalmodified);
    method_exchangeImplementations(fontoriginalBoldMethod, fontmodifiedBoldMethod);*/
}


@end
