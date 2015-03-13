//
//  MyNavigationBar.m
//  CustomView
//
//  Created by Eizer_N34 on 2015. 3. 13..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "MyNavigationBar.h"

@implementation MyNavigationBar

// 스토리 보드나 또는 XIB로 생성을 하면 아래의 초기화 함수가 호출됩니다.
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 480, 64)];
        
        [self addSubview: _imageView];
        _imageView.image =[UIImage imageNamed:@"0.png"];
    }
    
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
