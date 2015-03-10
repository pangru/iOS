//
//  selector.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//
#import <Foundation/Foundation.h>

// Selector: 메소드 고유 이름
@interface Car : NSObject

- (void)go;
- (void)go:(int)a;
- (void)go:(int)a speed:(int)s;

@end

@implementation Car

- (void)go                      { NSLog(@"go1"); }  // Selector? go
- (void)go:(int)a               { NSLog(@"go2"); }  // Selector? go:
- (void)go:(int)a speed:(int)s  { NSLog(@"go3"); }  // Selector? go:speed:
@end

@interface Truck : NSObject
- (void)go:(int)a;
@end

@implementation Truck
- (void)go:(int)a {}
@end

// 1. method name
// 2. How to get select: @selector ()
// 3. performSelector
typedef id  (*F)(id, SEL, ...);

int main() {
    SEL s1 = @selector(go);
    SEL s2 = @selector(go:);
    SEL s3 = @selector(go:speed:);
    
    Car* p = [Car alloc];
    [p performSelector:s1];  //[p go]
    // p 라는 객체의 메소드 테이블 안에서 s 라는 문자열의 함수를 찾아낸다.
    // 찾았다면 호출한다
    
    [p performSelector:s2 withObject:@10];
    [p performSelector:s3 withObject:@10 withObject:@20];
    
    // Method Selector? 내부 구현은 번호 였으나 이제는 문자열로 관리되고 있음
    // 4. sel_getName을 통해서 셀렉터의 이름을 알아낼 수 있다.
    NSLog(@"%s %s %s", sel_getName(s1), sel_getName(s2), sel_getName(s3));
    
    // 5. Obj-C의 모든 메소드는 결국 C의 함수로 변화된다
    F f = (F)[p methodForSelector:s1];
    f(p, s1);
    
    f = (F)[p methodForSelector:s2];
    f(p, s2, 10);
    
    // 6. Selector의 정확한 원리
    // 함수 이름을 담은 문자열 = 메소드 이름이 동일하면 셀렉터도 동일하다.
    // [p performSelector:s1]
    // : p 객체의 메소드 테이블 안에서 s1의 이름을 갖는 함수를 찾아서 호출해달라.
}