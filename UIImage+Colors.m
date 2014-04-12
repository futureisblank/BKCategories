//
//  UIImage+Colors.m
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import "UIImage+Colors.h"

@implementation UIImage (Colors)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

- (UIImage *)imageWithAccentColor:(UIColor *)accentColor {
    UIImage *image = self;

    CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);

    UIGraphicsBeginImageContextWithOptions(rect.size, NO, image.scale);

    CGContextRef c = UIGraphicsGetCurrentContext();
    [image drawInRect:rect];

    CGContextSetFillColorWithColor(c, [accentColor CGColor]);
    CGContextSetBlendMode(c, kCGBlendModeSourceAtop);
    CGContextFillRect(c, rect);

    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return result;
}

@end
