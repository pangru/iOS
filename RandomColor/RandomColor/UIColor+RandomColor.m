//
//  UIColor+RandomColor.m
//  RandomColor
//
//  Created by Eizer_N34 on 2015. 3. 11..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)
+ (UIColor *)randomColor
{
    UIColor* color = [[UIColor alloc] initWithRed:drand48()
                                            green:drand48()
                                             blue:drand48()
                                            alpha:1];
    return color;
}

@end
