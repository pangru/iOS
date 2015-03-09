
//
//  08_initializer.m
//  08. 초기화 함수
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//
// 초기화 함수
#import <Foundation/Foundation.h>

// 초기화 함수의 규칙
// 1. init으로 시작하는 함수 이름.

@interface Car: NSObject
@property int color;
@property NSString* name;

- (id)init;
- (id)initWithColor:(int)c;

@end

@implementation Car
- (id)init {
    self = [super init];
    if (self) {
        _color = 10;
        _name = nil;
    }
    
    return self;
}

// 지정된 초기자
// Initializing a Object
- (id)initWithColor:(int)c {
    self = [super init];
    if (self) {
        _color = c;
    }
    
    return self;
}

/* C++ 소멸자
// ARC를 사용하지 않는 경우에만 필수로 선언해줘야 함
- (void)dealloc {
    [_name Release];
    [super dealloc];
}
 */
@end

@interface Truck: Car
- (id)initWithColor:(int)c;
@end

@implementation Truck: Car

- (id) initWithColor:(int)c {
    self = [super initWithColor:c];
    if (self) {
        
    }
    
    return self;
}

@end

int main() {
    Car* p = [Car alloc];   //1. 메모리 할당
    [p init];               //2. init 함수 호출하여 내부 변수 초기화
    
    Car* p2 = [[Car alloc] init];
    Car* p3 = [Car new];    // alloc + init
    
    NSLog(@"%d\n", p.color);
}