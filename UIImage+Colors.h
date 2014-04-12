//
//  UIImage+Colors.h
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Colors)

+ (UIImage *)imageWithColor:(UIColor *)color;
- (UIImage *)imageWithAccentColor:(UIColor *)accentColor;

@end
