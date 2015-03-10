//  객체 생성
//
//  11_createObj.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

// * 아이폰(OS X) 에서의 객체 생성 방법

int main() {
    @autoreleasepool {
        // 1. 사용자가 alloc 한 경우 - release 해야 한다.
        NSArray* a1 = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", nil];
        [a1 release];
        
        // 2. 정적함수인 팩토리 메소드를 만든 경우 - autopool에 놓인다. release 하지 않는다.
        NSArray* a2 = [NSArray arrayWithObjects:@"A", @"B", nil];
        
        // 3. 문자열은 3가지 스타일이 있다
        // 문자열 리터럴로 생성하는 경우에는, 자동으로 autorelease pool에 추가되므로 수동으로 release 할 필요 없음.
        NSString* s1 = [[NSString alloc] initWithString:@"AA"]; [s1 release];
//        NSString* s2 = [NSString stringWithString:@"AA"];
        NSString* s3 = @"AA";
    }
}