//  Block Programming
//  iOS 4.x 부터 나왔는데 Obj-C의 확장이 아닌 C언어의 확장입니다.
//  1. 코드 덩어리를 참조하는 변수
//  2. 함수 인자를 블럭으로 받으면, 코드 자체를 인자로 전달할 수 있다.

//  15_blockPrograming.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

#if 0
int add(int a, int b) { return a + b; }

int main() {
    int (*f)(int, int) = &add;
    
    int (^b)(int, int) = ^(int x, int y) { return x + y; };
    
    NSLog(@"%d", b(1, 2));
}

#endif


@interface Car : NSObject

- (void)foo:(int)a code:(int(^)(int, int))b;

@end

@implementation Car
- (void)foo:(int)a code:(int(^)(int, int))b
{
    NSLog(@"%d", b(a, a));
}
@end


// Sorting 구현기
void sort(int*x, int n, int (^cmp)(int, int)) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (cmp(x[i], x[j]))
                swap(&x[i], &x[j]);
        }
    }
}

int main() {
    Car* p = [Car alloc];
    [p foo:10 code:^int(int a, int b) { return a + b; }];
    
    // Sorting 구현기
    int x[10] = { 1, 3, 5, 7, 9, 2, 4, 6, 8, 10 };
    sort(x, 10, ^(int a, int b) { return a < b; });
    
    for (int i = 0; i < 10; i++) {
        printf("%d", i);
    }
    
}