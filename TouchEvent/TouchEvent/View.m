//
//  View.m
//  TouchEvent
//
//  Created by Eizer_N34 on 2015. 3. 12..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import "View.h"

// 터치 메세지 정리
// 1. View -> viewController -> 부모View -> 부모 컨트롤러 -> Window -> AppDelegate
// 2. Responder Chain 이라고 불리는 개념이다.
// 3. 터치 메세지 종류 4가지 있다

@implementation View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Test");
    NSLog(@"%s", __func__);
    
    // View 가 처리하고 다른 객체들에게 전달하려면 부모 호출하면 된다
    [super touchesBegan:touches withEvent:event];
}
@end
