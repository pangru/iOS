//  참조 계수
//  이 예제는 ARC가 켜져 있으면 동작하지 않습니다.
//
//  10_reference_count.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property int color;
@end

@implementation Car

// 자주 사용되는 객체의 초기화 과정이 복잡하다면 해당 객체를 만들어주는 정적 함수를 제공해주는 것이 좋다
// - 팩토리 메소드 (디자인 패턴의 팩토리 메소드 패턴과 다르다)
// - 정적 팩토리 메소드
// 해당하는 클래스의 이름을 prefix로 붙여야 함
+ (Car* )carBlue
{
    Car* p = [[Car alloc] init];
    [p autorelease];
    return p;
}


- (void)dealloc
{
    NSLog(@"Car destroy");
    [super dealloc];
}

@end

// 3. 팩토리 함수(메소드)
int main() {
    @autoreleasepool {
        Car* p = [Car carBlue];
    }
}

#if 0  // 1. 참조 계수 기반의 객체 관리 개념
int main() {
    Car* p = [[Car alloc] init];
    NSLog(@"%ld", [p retainCount]); // 1
    
    Car* p2 = p;
//    [p2 retain];  // deep copy
    [p release];    // swallow copy

#endif
    
#if 0  // 2. auto release pool - ARC 나오기 전!!
int main() {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    Car* p2 = [Car alloc];
    [p2 autorelease];
    
    Car* p3 = [[Car alloc] autorelease];
    [pool release];
}
#endif
    

#if 0  // 2-2. auto release pool -  ARC 나온 이후
int main() {
    @autoreleasepool {
        Car* a1 = [Car alloc];
        [a1 autorelease];
        
        Car* a2 = [[Car alloc] autorelease];
    }
}
#endif
