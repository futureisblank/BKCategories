//
//  UIView+Position.h
//  Blank
//
//  Created by Aymeric Gallissot on 05/11/13.
//  Copyright (c) 2013 Blank. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Position)

@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign, readonly) CGFloat right;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign, readonly) CGFloat bottom;

@end
