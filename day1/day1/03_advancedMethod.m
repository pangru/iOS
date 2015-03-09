#if 0
//
//  03_method.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1. 인자가 2개 이상 있는 메소드를 만드는 방법.

@interface Car : NSObject {
    int _speed;
    int _color;
}

- (int) color;
- (void) setColor: (int)c;
- (int) speed;
- (void) setSpeed: (int)s;

// set (int s, int c);
- (void) setSpeed:(int)s Color:(int)c;

@end

@implementation Car

- (int) color { return _color; }
- (int) speed { return _speed; }
- (void) setColor: (int) c { _color = c; }
- (void) setSpeed: (int) s { _speed = s; }
- (void) setSpeed: (int)s Color:(int)c { NSLog(@"%d, %d", s, c); }

@end

int main() {
    Car* p = [Car alloc];
    
    [p setSpeed:10];
    
    [p setSpeed:10 Color:20];

    NSLog(@"%d", [p speed]);
    
    // Car* p2 = [Car alloc];
    id p2 = [Car alloc];
    // 익명 타입 id - Obj-C의 모든 객체를 가리킬 수 있는 포인터
    
    [p2 setSpeed:10 Color:25];
}

// 호출과 메세징 구조
// Obj-C : 함수 호출이 아닌 메세징 구조를 사용한다. - 스몰토크
// foo() : 컴파일 타임에 호출 여부 결정됨 - 정적 바인딩
// 메세징 구조: 컴파일 타임에 결정되는 것이 아니라 런타임에 결정됨 - 동적 바인딩
// 메세징 탐색은?  리시버 -> 부모 인스턴스 -> ...

#endif