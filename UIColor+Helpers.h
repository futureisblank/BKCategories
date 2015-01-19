//
//  UIColor+Hex.h
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Helpers)

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert alpha:(float)alpha;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

- (UIColor *)darkerColorWithBrightness:(CGFloat)brightness;
- (UIColor *)lighterWithColorWithBrightness:(CGFloat)brightness;

@end
