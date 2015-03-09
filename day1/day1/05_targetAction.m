//
//  05_targetAction.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

// iPhone 3대 Design
// 1. MVC
// 2. Target-Action (Callback 기능)
// 3. Delegate

@interface Dialog : NSObject
- (void)close;
@end

@implementation Dialog
- (void)close   { NSLog(@"Dialog closed!"); }
@end

@interface Button : NSObject
{
    id target;
    SEL action;
}

- (void)addTarget:(id)t action:(SEL)a;
- (void)click;
@end

@implementation Button

- (void)addTarget:(id)t action:(SEL)a   {
    target = t;
    action = a;
}
- (void)click {
    [target performSelector:action];
}


@end
int main() {
    Dialog* dialog = [Dialog alloc];
    Button* button = [Button alloc];
    
    // 버튼을 누를 때 핸들러를 연결해주는 개념.
    [button addTarget:dialog action:@selector(close)];
    [button click];
}
#endif