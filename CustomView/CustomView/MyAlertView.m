//
//  MyAlertView.m
//  CustomView
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    
    NSString* s = [NSString stringWithFormat:@"\n\n\n\n%@", message];
    
    self = [super initWithTitle:title message:s delegate:delegate cancelButtonTitle:cancelButtonTitle otherButtonTitles:otherButtonTitles, nil];
    
    if (self) {
        UITextField* textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
        textField.backgroundColor = [UIColor redColor];
        [self addSubview:textField];
    }
    
    return self;
    
}
@end
