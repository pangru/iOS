//
//  06_property.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

// 매우 중요한 개념
// 1. 인스턴스 변수에 접근하기 위해서는 클래스 설계자가 접근자 메소드를 제공해야 한다

#import <Foundation/Foundation.h>

@interface Car : NSObject
/*  
 _speed property 내부 구조
{
    int _speed;
}

- (void)setSpeed:(int)s;
- (int)speed;
*/

// (readonly)? 컴파일러가 setter를 생성해주지 않는다
@property (readonly) int color;
@property   int speed;
@property   NSString* name;
@end

@implementation Car
/*
 _speed property 내부 구조
- (void)setSpeed:(int)s { _speed = s; }
- (int)speed            { return _speed; }
 */
@synthesize speed = mySpeed;

- (void)foo
{
    // setter : self.speed = 10 ? 메소드 안에서 갑 대입 시에는 setter 사용
    // getter : NSLog(@"%d", _speed); ? 메소드 안에서는 직접 접근
    self.speed = 10; // [self setSpeed: 10]
    mySpeed = 10;
}
@end

int main() {
    Car* p = [Car alloc];
    [p setSpeed:10]; // p.speed = 10  의미와 동일
    
    NSLog(@"%d", [p speed]); // NSLog(@"%d", p.seed)
}