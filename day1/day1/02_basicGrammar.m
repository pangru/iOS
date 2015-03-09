//
//  02_basicGrammar.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//


#if 0
// Car.h
#import <Foundation/Foundation.h>
@interface Car : NSObject {
    @private // @public, @pretected -> default: @pretected
    int speed;
    int color;
}

- (void) foo;
+ (void) hoo;

@end

// Car.m
@implementation Car

// 접근 지정자는 멤버 데이터만 가능
// + : 클래스 메소드. 인스턴스 없이 호출 가능한 함수 -> Car::foo();
// - : 인스턴스 메소드. 인스턴스가 있어야 호출 가능한 함수 -> Car* p = new Car; p->foo();
- (void) foo {
    NSLog(@"-foo");
}

+ (void) hoo {
    NSLog(@"+hoo");
}
@end

int main() {
    [Car hoo];
    // [리시버 셀렉터]
    // 객체 또는 클래스에 메세지를 보낸다

    Car* p = [Car alloc];  // Car* p = new Car;
    // [p retain];
    // 인터페이스 타입은 힙에 생성되어야 한다.
    
    [p foo];
    
    // ARC : Auto Reference Counting
    // 참조 계수 관리를 자동으로 해주기 때문에, retain, release 사용하지 않아도 된다.
    Car* p2 = p;
    [p2 retain];
    
    [p release];
    [p2 release];
    
    p = nil;
    [p foo];
    
    // [p release];
    // [p2 release];
}

#endif