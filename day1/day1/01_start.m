//
//  01_start.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 9..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#if 0
// 1. 확장자: .m (C + obj-C), .mm(C++, Obj-C)
// 2. C: #include - 동일 헤더를 2번 포함하면 재저으이 에러 발생
//                  include guard
// 3. Obj-C: #import - 2번 포함해도 문제 없음
// 4. Obj-C 문자열: @"" : NSString*로 가리킬 수 있음

#import <Foundation/Foundation.h>

int main() {
    const char* s1 = "Hello C";
    NSString* s2 = @"Hello Obj-C";
    //= new NSString(@"");
    
    printf("%s\n", s1);
    NSLog(@"%s %@", s1, s2);
}

// cmd + R : 컴파일 + 실행
#endif