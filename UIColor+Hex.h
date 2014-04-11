//
//  UIColor+Hex.h
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert alpha:(float)alpha;
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

@end
