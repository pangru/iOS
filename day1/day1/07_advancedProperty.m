//
//  07_advancedProperty.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1. 객체의 포인터 형의 프로퍼티에는 다음과 같은 속성 중 하나를 지정해야 한다 (메모리 속성)
// 수동 레퍼런스 카운팅
// retain- 인스턴수 변수가 소유권을 가지고 간다.
// assign- 소유권 없이 가리키기만 한다.
// copy  - 소유권은 있지만 복사권에 대한 소유권 있다.

// 자동 레퍼런스 카운팅
// strong - retain과 동일
// weak   - assign과 동일. 소유권이 없고, 참조계수를 조작하지 않는다. - autoniling
// copy

// 2. 원자성 속성
// atomic    - 인스턴스 변수를 조작할 때 락을 제공한다 (getter/setter에서 property에 대한 락 보호 적용됨)
// nonatomic - 인스턴수 변수를 조작할 때 락을 제공하지 않는다 (성능 저하)

// 3. 읽기/ 쓰기 속성
// readnly   - getter만 제공
// readwrite - getter, setter 모두 제공

@interface Person : NSObject

@property int age;
@property(nonatomic, readwrite, retain) NSString* phone;

@end

@implementation Person
@synthesize phone = _phone;

- (void)setPhone:(NSString*)p
{
    _phone = [p copy];
    [_phone retain];
}
@end

int main() {
    
}