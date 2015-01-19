//
//  UIColor+Hex.m
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import "UIColor+Helpers.h"

@implementation UIColor (Helpers)

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert alpha:(float)alpha
{
	NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
	
	// String should be 6 or 8 characters
	if ([cString length] < 6)
		return [UIColor blackColor];
	
	// strip 0X if it appears
	if ([cString hasPrefix:@"0X"])
		cString = [cString substringFromIndex:2];
	
	// strip # if it appears
	if ([cString hasPrefix:@"#"]) {
		cString = [cString substringFromIndex:1];
	}
	
	if ([cString length] != 6)
		return [UIColor blackColor];
	
	// Separate into r, g, b substrings
	NSRange range;
	range.location = 0;
	range.length = 2;
	NSString *rString = [cString substringWithRange:range];
	range.location = 2;
	NSString *gString = [cString substringWithRange:range];
	range.location = 4;
	NSString *bString = [cString substringWithRange:range];
	
	unsigned int r, g, b;
	[[NSScanner scannerWithString:rString] scanHexInt:&r];
	[[NSScanner scannerWithString:gString] scanHexInt:&g];
	[[NSScanner scannerWithString:bString] scanHexInt:&b];
	
	return [UIColor colorWithRed:((float) r / 255.0f)
						   green:((float) g / 255.0f)
							blue:((float) b / 255.0f)
						   alpha:alpha];
}


+ (UIColor *)colorWithHexString:(NSString *)stringToConvert
{
	return [self colorWithHexString:stringToConvert alpha:1.0f];
}

- (UIColor *)darkerColorWithBrightness:(CGFloat)brightness
{
    CGFloat h, s, b, a;
    
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a]) {
        return [UIColor colorWithHue:h saturation:s brightness:b * brightness alpha:a];
    }
    
    return self;
}

- (UIColor *)lighterWithColorWithBrightness:(CGFloat)brightness
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a]) {
        return [UIColor colorWithRed:MIN(r + brightness, 1.0) green:MIN(g + brightness, 1.0) blue:MIN(b + brightness, 1.0) alpha:a];
    }
    
    return self;
}


@end
