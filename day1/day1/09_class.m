//
//  09_class.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

// root 클래스
// NSObject, NSProxy

@interface Car : NSObject
- (void)go;
@end

@implementation Car

- (void)go  { NSLog(@"go"); }

@end

void foo (id p) {
    // p가 Car라는 객체면 go를 호출하고 싶다.
    // C++ RTTI와 동일한 개념 입니다.
    if ([p isKindOfClass:[Car class]]) {
        [p go];
    }
}

// 1. Class : 클래스의 클래스ㅜ
// 2. 얻는 방법: 3가지 존재
// 3. RTTI : 실행시간 중에 해당하는 인스턴스의 타입을 알아내는 기술
int main() {
    Car* p = [[Car alloc] init];
    
// ** 클래스의 정보를 얻어오는 방법
    // 1. 객체의 클래스 인스턴스 메소드
    Class c = [p class];
    // 2. 정적 메소드
    __unused Class c1 = [Car class];
    // 3. 문자열로 얻기
    __unused Class c2 = NSClassFromString(@"Car");
    
    __unused Car* p2 = [[c alloc] init];
    Car* p1 = [[Car alloc] init];
    foo(p1);
}