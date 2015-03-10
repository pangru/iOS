//
//  14_mutable.m
//  day1
//
//  Created by Eizer_N34 on 2015. 3. 10..
//  Copyright (c) 2015년 Eizer_N34. All rights reserved.
//

#import <Foundation/Foundation.h>

int main() {
    
    
    
// 1. String
    NSString* s1 = [[NSString alloc] initWithString:@"AAA"];
    // [s1];
    // Obj-C NSString은 immutable 하다. - 불변 객체
    
    NSMutableString* s2 = [[NSMutableString alloc] initWithString:@"AAA"];

    NSLog(@"Before %@", s2);
    
    NSRange range;
    range.location = 1;
    range.length = 2;
    
    [s2 replaceCharactersInRange:range withString:@"BB"];
    
    NSLog(@"After %@", s2);


    
// 2. Collections
    NSMutableArray* arr = [[NSMutableArray alloc] initWithObjects:@"AA", @"BB", nil];
    [arr replaceObjectAtIndex:0 withObject:@"CC"];

    // 편한 입력 방법
    arr[0] = @"CC";
    NSArray* arr2 = @[@"AA", @"BB"];
    
    NSString* cs1 = [arr objectAtIndex:0];
    
    NSLog(@"%@", cs1);

    
    
// 3. Dictionary
    // 아이폰에서 정말 가장 많이 사용하는 자료 구조 - Dictionary -> 키, 값으로 이루어진 자료구조
    NSDictionary* dic = [[NSDictionary alloc]
                         initWithObjectsAndKeys:
                         @"월요일", @"mon",
                         @"화요일", @"tue",
                         nil, nil];
    
    NSDictionary* advancedDic = @{@"mon":@"월요일",
                                  @"tue":@"화요일"};
    
    NSString* ds1 = [dic objectForKey:@"mon"];
    NSString* ds2 = [advancedDic objectForKey:@"mon"];
    NSLog(@"%@,  %@", ds1, ds2);
    
    NSNumber* n = [NSNumber numberWithInt:2];
    n = @2;
}